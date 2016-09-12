/*
 * SPI flash interface
 *
 * Copyright (C) 2008 Atmel Corporation
 * Licensed under the GPL-2 or later.
 */

//#include <common.h>
//#include <malloc.h>
#include "spi.h"
#include "spi_flash.h"

#include "spi_flash_internal.h"

int spi_flash_cmd(struct spi_slave *spi, unsigned char cmd, void *response, unsigned int len)
{
	unsigned long flags = SPI_XFER_BEGIN;
	int ret;

	if (len == 0)
		flags |= SPI_XFER_END;

	ret = spi_xfer(spi, 8, &cmd, NULL, flags);
	if (ret) {
		debug("SF: Failed to send command %02x: %d\n", cmd, ret);
                printf("SF: Failed to send command %02x: %d\n", cmd, ret);
		return ret;
	}
    
	if (len) {
		ret = spi_xfer(spi, len * 8, NULL, response, SPI_XFER_END);
		if (ret)
			debug("SF: Failed to read response (%zu bytes): %d\n",
					len, ret);

			//printf("SF: Failed to read response (%zu bytes): %d\n", len, ret);        // delete
	}

	return ret;
}

int spi_flash_cmd_read(struct spi_slave *spi, const unsigned char *cmd,
		unsigned int cmd_len, void *data, unsigned int data_len)
{
	unsigned long flags = SPI_XFER_BEGIN;
	int ret;

	if (data_len == 0)
		flags |= SPI_XFER_END;

	ret = spi_xfer(spi, cmd_len * 8, cmd, NULL, flags);
	if (ret) {
		debug("SF: Failed to send read command (%zu bytes): %d\n",
				cmd_len, ret);
	} else if (data_len != 0) {
			spi_claim_bus_read_fast(spi); // add for fast boot 17/01/2014
		ret = spi_xfer_read_fast(spi, data_len * 8, NULL, data, SPI_XFER_END);  // modify for fast boot 17/01/2014
		if (ret)
			debug("SF: Failed to read %zu bytes of data: %d\n",
					data_len, ret);
	}

	return ret;
}

int spi_flash_cmd_write(struct spi_slave *spi, const unsigned char *cmd, unsigned int cmd_len,
		const void *data, unsigned int data_len)
{
	unsigned long flags = SPI_XFER_BEGIN;
	int ret;

	if (data_len == 0)
		flags |= SPI_XFER_END;

	ret = spi_xfer(spi, cmd_len * 8, cmd, NULL, flags);
	if (ret) {
		debug("SF: Failed to send read command (%zu bytes): %d\n",
				cmd_len, ret);
	} else if (data_len != 0) {
		ret = spi_xfer(spi, data_len * 8, data, NULL, SPI_XFER_END);
		if (ret)
			debug("SF: Failed to read %zu bytes of data: %d\n",
					data_len, ret);
	}

	return ret;
}


int spi_flash_read_common(struct spi_flash *flash, const unsigned char *cmd,
		unsigned int cmd_len, void *data, unsigned int data_len)
{
	struct spi_slave *spi = flash->spi;
	int ret;

	spi_claim_bus(spi);
	ret = spi_flash_cmd_read(spi, cmd, cmd_len, data, data_len);
	spi_release_bus(spi);

	return ret;
}

struct spi_flash *spi_flash_probe(unsigned int bus, unsigned int cs,
		unsigned int max_hz, unsigned int spi_mode)
{
	struct spi_slave *spi;
	struct spi_flash *flash;
	int ret;
	unsigned char idcode[5];

	spi = spi_setup_slave(bus, cs, max_hz, spi_mode);
	if (!spi) {
		debug("SF: Failed to set up slave\n");
                printf("SF: Failed to set up slave\n");
		return NULL;
	}

	ret = spi_claim_bus(spi);
	if (ret) {
		debug("SF: Failed to claim SPI bus: %d\n", ret);
                printf("SF: Failed to claim SPI bus: %d\n", ret);
		goto err_claim_bus;
	}

	/* Read the ID codes */
	ret = spi_flash_cmd(spi, CMD_READ_ID, &idcode, sizeof(idcode));
	if (ret)
		goto err_read_id;

	debug("SF: Got idcode %02x %02x %02x %02x %02x\n", idcode[0],
			idcode[1], idcode[2], idcode[3], idcode[4]);

	printf("SF: Got idcode %02x %02x %02x %02x %02x\n", idcode[0],
			idcode[1], idcode[2], idcode[3], idcode[4]);

	switch (idcode[0]) {

	case 0x01:
		flash = spi_flash_probe_spansion(spi, idcode);//liuxu, 06/18/2014, RISK...
		flash->type = 0x01;
		break;

	case 0xef:
	    printf("\nliuxu, 06/18/2014, this is the winbond spi flash running on EVM.\n");
		flash = spi_flash_probe_winbond(spi, idcode);
		flash->type = 0xef;
		break;
		
	default:
		debug("SF: Unsupported manufacturer %02X\n", idcode[0]);
		flash = NULL;
		break;
	}

	if (!flash)
		goto err_manufacturer_probe;

	spi_release_bus(spi);

	return flash;

err_manufacturer_probe:
err_read_id:
	spi_release_bus(spi);
err_claim_bus:
	spi_free_slave(spi);
	return NULL;
}

void spi_flash_free(struct spi_flash *flash)
{
	spi_free_slave(flash->spi);
	free(flash);
}
