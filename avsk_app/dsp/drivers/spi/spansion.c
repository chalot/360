/*
 * Copyright (C) 2009 Freescale Semiconductor, Inc.
 *
 * Author: Mingkai Hu (Mingkai.hu@freescale.com)
 * Based on stmicro.c by Wolfgang Denk (wd@denx.de),
 * TsiChung Liew (Tsi-Chung.Liew@freescale.com),
 * and  Jason McMullan (mcmullan@netapp.com)
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

//#include <common.h>
//#include <malloc.h>
#include "spi_flash.h"

#include "spi_flash_internal.h"
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
/* S25FLxx-specific commands */
#define CMD_S25FLXX_READ	0x03	/* Read Data Bytes */
#define CMD_S25FLXX_FAST_READ	0x0b	/* Read Data Bytes at Higher Speed */
#define CMD_S25FLXX_READID	0x90	/* Read Manufacture ID and Device ID */
#define CMD_S25FLXX_WREN	0x06	/* Write Enable */
#define CMD_S25FLXX_WRDI	0x04	/* Write Disable */
#define CMD_S25FLXX_RDSR	0x05	/* Read Status Register */
#define CMD_S25FLXX_WRSR	0x01	/* Write Status Register */
#define CMD_S25FLXX_PP		0x02	/* Page Program */
#define CMD_S25FLXX_SE		0xd8	/* Sector Erase */
#define CMD_S25FLXX_BE		0xc7	/* Bulk Erase */
#define CMD_S25FLXX_DP		0xb9	/* Deep Power-down */
#define CMD_S25FLXX_RES		0xab	/* Release from DP, and Read Signature */

// add for spansion 32M spi flash.
#define CMD_S25FLXX_BRAC	0xB9	/* Enable BRWR and BRRD */
#define CMD_S25FLXX_BRRD	0x16	/* Read BAR */
#define CMD_S25FLXX_BRWR	0x17	/* Enable 4 bytes cmd */
#define CMD_S25FLXX_4FAST_READ	0x0C	/* Read Data Bytes at Higher Speed use 4 bytes cmd */
#define CMD_S25FLXX_4PP		    0x12	/* Page Program use 4 bytes cmd */
#define CMD_S25FLXX_4SE		    0xDC	/* Sector Erase use 4 bytes cmd */
// add for spansion 32M spi flash.

#define SPSN_ID_S25FL008A	0x0213
#define SPSN_ID_S25FL016A	0x0214
#define SPSN_ID_S25FL032A	0x0215
#define SPSN_ID_S25FL064A	0x0216
#define SPSN_ID_S25FL128P	0x2018
// add for spansion 16M , 32M spi flash start
#define SPSN_ID_S25FL128S	0x2018
#define SPSN_ID_S25FL256S	0x0219
#define SPSN_EXT_ID_S25FL128S_64KB	0x4d01
#define SPSN_EXT_ID_S25FL256S_64KB	0x4d01
// add for spansion 16M , 32M spi flash start
#define SPSN_EXT_ID_S25FL128P_256KB	0x0300
#define SPSN_EXT_ID_S25FL128P_64KB	0x0301

#define SPANSION_SR_WIP		(1 << 0)	/* Write-in-Progress */

struct spansion_spi_flash_params {
	unsigned short idcode1;
	unsigned short idcode2;
	unsigned short page_size;
	unsigned short pages_per_sector;
	unsigned short nr_sectors;
	const char *name;
};

struct spansion_spi_flash {
	struct spi_flash flash;
	const struct spansion_spi_flash_params *params;
};

#define offsetof(TYPE, MEMBER) ((unsigned int) &((TYPE *)0)->MEMBER)

#define container_of(ptr, type, member) ({			\
	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
	(type *)( (char *)__mptr - offsetof(type,member) );})

static inline struct spansion_spi_flash *to_spansion_spi_flash(struct spi_flash
							     *flash)
{
	return container_of(flash, struct spansion_spi_flash, flash);
}

static const struct spansion_spi_flash_params spansion_spi_flash_table[] = {
	{
		.idcode1 = SPSN_ID_S25FL008A,
		.idcode2 = 0,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 16,
		.name = "S25FL008A",
	},
	{
		.idcode1 = SPSN_ID_S25FL016A,
		.idcode2 = 0,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 32,
		.name = "S25FL016A",
	},
	{
		.idcode1 = SPSN_ID_S25FL032A,
		.idcode2 = 0,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 64,
		.name = "S25FL032A",
	},
	{
		.idcode1 = SPSN_ID_S25FL064A,
		.idcode2 = 0,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 128,
		.name = "S25FL064A",
	},
	{
		.idcode1 = SPSN_ID_S25FL128P,
		.idcode2 = SPSN_EXT_ID_S25FL128P_64KB,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 256,
		.name = "S25FL128P_64K",
	},
	{
		.idcode1 = SPSN_ID_S25FL128P,
		.idcode2 = SPSN_EXT_ID_S25FL128P_256KB,
		.page_size = 256,
		.pages_per_sector = 1024,
		.nr_sectors = 64,
		.name = "S25FL128P_256K",
	},
	{
		.idcode1 = SPSN_ID_S25FL128S,
		.idcode2 = SPSN_EXT_ID_S25FL128S_64KB,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 256,
		.name = "S25FL128S_64K",
	},
	{
		.idcode1 = SPSN_ID_S25FL256S,
		.idcode2 = SPSN_EXT_ID_S25FL256S_64KB,
		.page_size = 256,
		.pages_per_sector = 256,
		.nr_sectors = 512,
		.name = "S25FL256S_64K",
	},
};

static int spansion_wait_ready(struct spi_flash *flash, unsigned long timeout)
{
	struct spi_slave *spi = flash->spi;
	unsigned long timebase;
	int ret;
	unsigned char status;

	do {
		ret = spi_flash_cmd(spi, CMD_S25FLXX_RDSR, &status, sizeof(status));
		if (ret)
			return -1;

		if ((status & SPANSION_SR_WIP) == 0)
			break;

	} while (1);


	if ((status & SPANSION_SR_WIP) == 0)
		return 0;

	/* Timed out */
	return -1;
}

// modify for spansion spi flash start 20140325
static int spansion_set_bar_extadd(struct spi_flash *flash)
{
	struct spi_slave *spi = flash->spi;
	int ret;
	unsigned char cmd[2];

    cmd[0] = CMD_S25FLXX_BRWR;
    cmd[1] = 0x80;
    
	spi_claim_bus(spi);
	ret = spi_flash_cmd_write(spi, &cmd[0], 1, &cmd[1], 1);
	spi_release_bus(spi);

	return ret;
}

static int spansion_clear_bar_extadd(struct spi_flash *flash)
{
	struct spi_slave *spi = flash->spi;
	int ret;
	unsigned char cmd[2];

    cmd[0] = CMD_S25FLXX_BRWR;
    cmd[1] = 0x00;
    
	spi_claim_bus(spi);
	ret = spi_flash_cmd_write(spi, &cmd[0], 1, &cmd[1], 1);
	spi_release_bus(spi);

	return ret;
}

static int spansion_read_fast(struct spi_flash *flash,
			     unsigned int  offset, unsigned int len, void *buf)
{
    int ret = 0;
    unsigned char cmd[6];
    
    ret = spansion_set_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to set bar extadd\n");
        return ret;
    }
    
    cmd[0] = CMD_S25FLXX_4FAST_READ;
    cmd[1] = offset >> 24;
    cmd[2] = offset >> 16;
    cmd[3] = offset >> 8;
    cmd[4] = offset;
    cmd[5] = 0x00;

    debug
        ("READ: 0x%x => cmd = { 0x%02x 0x%02x%02x%02x%02x } len = 0x%x\n",
        offset, cmd[0], cmd[1], cmd[2], cmd[3], cmd[4], len);

    ret = spi_flash_read_common(flash, cmd, sizeof(cmd), buf, len);
    if(ret<0)
    {
        debug("SF: read data error %d\n",ret);
		return ret;
    }
#ifndef CONFIG_TI811X_FAST_SPI_BOOT
    ret = spansion_clear_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to clear bar extadd\n");
    }
#endif
    return ret;
}

#define min(X, Y)				\
	({ typeof (X) __x = (X), __y = (Y);	\
		(__x < __y) ? __x : __y; })

static int spansion_write(struct spi_flash *flash,
		unsigned int offset, unsigned int len, const void *buf)
{
    struct spansion_spi_flash *spsn = to_spansion_spi_flash(flash);
    struct spi_slave *spi = flash->spi;
    unsigned long page_addr;
    unsigned long byte_addr;
    unsigned long page_size;
    unsigned long chunk_len;
    unsigned long actual;
    int ret;
    unsigned char cmd[5];
    
    page_size = spsn->params->page_size;
    page_addr = offset / page_size;
    byte_addr = offset % page_size;
    
    ret = spansion_set_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to set bar extadd\n");
        return ret;
    }
    
    ret = spi_claim_bus(flash->spi);
    if (ret) {
        debug("SF: Unable to claim SPI bus\n");
        return ret;
    }
 
    for (actual = 0; actual < len; actual += chunk_len) {
        chunk_len = min(len - actual, page_size - byte_addr);
        
        cmd[0] = CMD_S25FLXX_4PP;
        cmd[1] = page_addr >> 16;
        cmd[2] = page_addr >> 8;
        cmd[3] = page_addr;
        cmd[4] = byte_addr;
        
        debug
            ("PP: 0x%p => cmd = { 0x%02x 0x%02x%02x%02x } chunk_len = %d\n",
            buf + actual, cmd[0], cmd[1], cmd[2], cmd[3], chunk_len);
        
        ret = spi_flash_cmd(flash->spi, CMD_S25FLXX_WREN, NULL, 0);
        if (ret < 0) {
            debug("SF: Enabling Write failed\n");
            break;
        }

        // modify start for fast write 20140609
        ret = spi_xfer(flash->spi, sizeof(cmd) * 8, cmd, NULL, SPI_XFER_BEGIN);
	    if (ret) {
		    printf("SF: Failed to send read command (%zu bytes): %d\n",
			sizeof(cmd), ret);
	    }
            
        spi_claim_bus_write_fast(flash->spi);
		ret = spi_xfer_write_fast(flash->spi, chunk_len * 8, buf + actual, NULL, SPI_XFER_END);
        spi_claim_bus_back(flash->spi);
        // modify end for fast write 20140609
        if (ret < 0) {
            debug("SF: SPANSION Page Program failed\n");
            break;
        }
        
        ret = spansion_wait_ready(flash, SPI_FLASH_PROG_TIMEOUT);
        if (ret < 0) {
            debug("SF: SPANSION page programming timed out\n");
            break;
        }
        
        page_addr++;
        byte_addr = 0;
    }
    
    debug("SF: SPANSION: Successfully programmed %u bytes @ 0x%x\n",
        len, offset);
    
    spi_release_bus(flash->spi);
#ifndef CONFIG_TI811X_FAST_SPI_BOOT
    ret = spansion_clear_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to clear bar extadd\n");
    }
#endif    
	return ret;
}

int spansion_erase(struct spi_flash *flash, unsigned int offset, unsigned int len)
{
    struct spansion_spi_flash *spsn = to_spansion_spi_flash(flash);
    unsigned long sector_size;
    unsigned long actual;
    int ret;
    unsigned char cmd[5];
    
    /*
     * This function currently uses sector erase only.
     * probably speed things up by using bulk erase
     * when possible.
     */
    
    sector_size = spsn->params->page_size * spsn->params->pages_per_sector;
    
    if (offset % sector_size || len % sector_size) {
        debug("SF: Erase offset/length not multiple of sector size\n");
        return -1;
    }

    ret = spansion_set_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to set bar extadd\n");
		return ret;
    }

    len /= sector_size;
    cmd[0] = CMD_S25FLXX_4SE;
    cmd[3] = 0x00;
    cmd[4] = 0x00;

    ret = spi_claim_bus(flash->spi);
    if (ret) {
        debug("SF: Unable to claim SPI bus\n");
        return ret;
    }

    ret = 0;
    for (actual = 0; actual < len; actual++) {
        cmd[1] = ((offset / sector_size) + actual) >> 8;
        cmd[2] = (offset / sector_size) + actual;
        
        ret = spi_flash_cmd(flash->spi, CMD_S25FLXX_WREN, NULL, 0);
        if (ret < 0) {
            debug("SF: Enabling Write failed\n");
            break;
        }
        
        ret = spi_flash_cmd_write(flash->spi, cmd, sizeof(cmd), NULL, 0);
        if (ret < 0) {
            debug("SF: SPANSION page erase failed\n");
            break;
        }
        
        /* Up to 2 seconds */
        ret = spansion_wait_ready(flash, SPI_FLASH_PAGE_ERASE_TIMEOUT);
        if (ret < 0) {
            debug("SF: SPANSION page erase timed out\n");
            break;
        }
    }

    debug("SF: SPANSION: Successfully erased %u bytes @ 0x%x\n",
          len * sector_size, offset);
    
    spi_release_bus(flash->spi);
#ifndef CONFIG_TI811X_FAST_SPI_BOOT
    ret = spansion_clear_bar_extadd(flash);
    if(ret<0)
    {
        debug("SF: Unable to clear bar extadd\n");
    }
#endif    
	return ret;
}

struct spi_flash *spi_flash_probe_spansion(struct spi_slave *spi, unsigned char *idcode)
{
	const struct spansion_spi_flash_params *params;
	struct spansion_spi_flash *spsn;
	unsigned int i;
	unsigned short jedec, ext_jedec;

	jedec = idcode[1] << 8 | idcode[2];
	ext_jedec = idcode[3] << 8 | idcode[4];

	for (i = 0; i < ARRAY_SIZE(spansion_spi_flash_table); i++) {
		params = &spansion_spi_flash_table[i];
		if (params->idcode1 == jedec) {
			if (params->idcode2 == ext_jedec)
				break;
		}
	}

	if (i == ARRAY_SIZE(spansion_spi_flash_table)) {
		debug("SF: Unsupported SPANSION ID %04x %04x\n", jedec, ext_jedec);
		return NULL;
	}

	spsn = malloc(sizeof(struct spansion_spi_flash));
	if (!spsn) {
		debug("SF: Failed to allocate memory\n");
		return NULL;
	}

	spsn->params = params;
	spsn->flash.spi = spi;
	spsn->flash.name = params->name;

	spsn->flash.write = spansion_write;
	spsn->flash.erase = spansion_erase;
	spsn->flash.read = spansion_read_fast;
	spsn->flash.size = params->page_size * params->pages_per_sector
	    * params->nr_sectors;

	debug("SF: Detected %s with page size %u, total %u bytes\n",
	      params->name, params->page_size, spsn->flash.size);

	return &spsn->flash;
}
