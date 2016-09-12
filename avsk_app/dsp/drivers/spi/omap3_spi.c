/*
 * Copyright (C) 2010 Dirk Behme <dirk.behme@googlemail.com>
 *
 * Driver for McSPI controller on OMAP3. Based on davinci_spi.c
 * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
 *
 * Copyright (C) 2007 Atmel Corporation
 *
 * Parts taken from linux/drivers/spi/omap2_mcspi.c
 * Copyright (C) 2005, 2006 Nokia Corporation
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

//#include <common.h>
#include "spi.h"
//#include <malloc.h>
//#include <asm/io.h>
#include "omap3_spi.h"
#define readl(a)			(*(volatile unsigned int *)(a))

#define writel(v,a)		(*(volatile unsigned int *)(a) = (v))

#define WORD_LEN	8


static void spi_reset(struct omap3_spi_slave *ds)
{
	unsigned int tmp;

	writel(OMAP3_MCSPI_SYSCONFIG_SOFTRESET, &ds->regs->sysconfig);
	do {
		tmp = readl(&ds->regs->sysstatus);
	} while (!(tmp & OMAP3_MCSPI_SYSSTATUS_RESETDONE));

	writel(OMAP3_MCSPI_SYSCONFIG_AUTOIDLE |
	       OMAP3_MCSPI_SYSCONFIG_ENAWAKEUP |
	       OMAP3_MCSPI_SYSCONFIG_SMARTIDLE,
	       &ds->regs->sysconfig);

	writel(OMAP3_MCSPI_WAKEUPENABLE_WKEN, &ds->regs->wakeupenable);
}

void spi_init()
{
	/* do nothing */
}

struct spi_slave *spi_setup_slave(unsigned int bus, unsigned int cs,
				  unsigned int max_hz, unsigned int mode)
{
	struct omap3_spi_slave	*ds;

	ds = malloc(sizeof(struct omap3_spi_slave));
	if (!ds) {
		printf("SPI error: malloc of SPI structure failed\n");
		return NULL;
	}

	/*
	 * OMAP3 McSPI (MultiChannel SPI) has 4 busses (modules) with different number of
	 * chip selects (CS, channels):
	 * McSPI1 has 4 CS (bus 0, cs 0 - 3)
	 * McSPI2 has 2 CS (bus 1, cs 0 - 1)
	 * McSPI3 has 2 CS (bus 2, cs 0 - 1)
	 * McSPI4 has 1 CS (bus 3, cs 0)
	 */

	switch (bus) {
	case 0:
		ds->regs = (struct mcspi *)OMAP3_MCSPI1_BASE;
		break;
	default:
		printf("SPI error: unsupported bus %i. Supported busses 0 - 3\n", bus);
		return NULL;
	}
	ds->slave.bus = bus;

	ds->slave.cs = cs;
	if (max_hz > OMAP3_MCSPI_MAX_FREQ) {
		printf("SPI error: unsupported frequency %i Hz. Max frequency is"
				" %d Mhz\n", max_hz, (OMAP3_MCSPI_MAX_FREQ/1000/1000));
		return NULL;
	}
	ds->freq = max_hz;

	if (mode > SPI_MODE_3) {
		printf("SPI error: unsupported SPI mode %i\n", mode);
		return NULL;
	}
	ds->mode = mode;

	return &ds->slave;
}

void spi_free_slave(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);

	free(ds);
}

// add for fast boot start 17/01/2014
int spi_claim_bus_read_fast(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int conf;


	conf = readl(&ds->regs->channel[ds->slave.cs].chconf);

	/* wordlength */
	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
	conf |= (31) << 7;

    conf |= OMAP3_MCSPI_CHCONF_TURBO; // add 20140402 to speed up spi flash read
	
	/*receive mode */
	conf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;
	conf |= OMAP3_MCSPI_CHCONF_TRM_RX_ONLY;
	writel(conf, &ds->regs->channel[ds->slave.cs].chconf);

	return 0;
}
// add for fast boot end 17/01/2014

// add start for fast write 20140609
int spi_claim_bus_write_fast(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int conf = 0;

	conf = readl(&ds->regs->channel[ds->slave.cs].chconf);
    
	/* wordlength */
	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
	conf |= (31) << 7;

	/* Transmit only */
	conf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;
    conf |= OMAP3_MCSPI_CHCONF_TRM_TX_ONLY;

    conf |= OMAP3_MCSPI_CHCONF_TURBO; // add 20140402 to speed up spi flash read

	writel(conf, &ds->regs->channel[ds->slave.cs].chconf);
	return 0;
}

int spi_claim_bus_back(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int conf = 0;

	conf = readl(&ds->regs->channel[ds->slave.cs].chconf);
    
	/* wordlength */
	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
	conf |= (WORD_LEN - 1) << 7;

	/* Transmit & receive mode */
	conf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;

    conf &= ~OMAP3_MCSPI_CHCONF_TURBO; // add 20140402 to speed up spi flash read

	writel(conf, &ds->regs->channel[ds->slave.cs].chconf);
	return 0;
}
// add end for fast write 20140609

int spi_claim_bus(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int conf, div = 0;

	/* McSPI global module configuration */

	/*
	 * setup when switching from (reset default) slave mode
	 * to single-channel master mode
	 */
	spi_reset(ds);
	conf = readl(&ds->regs->modulctrl);
	conf &= ~(OMAP3_MCSPI_MODULCTRL_STEST | OMAP3_MCSPI_MODULCTRL_MS);
	conf |= OMAP3_MCSPI_MODULCTRL_SINGLE;
        if(1 == ds->slave.bus)
        {
            conf |= 1<<1;
        }
	writel(conf, &ds->regs->modulctrl);

	/* McSPI individual channel configuration */

	/* Calculate clock divisor. Valid range: 0x0 - 0xC ( /1 - /4096 ) */
	if (ds->freq) {
		while (div <= 0xC && (OMAP3_MCSPI_MAX_FREQ / (1 << div))
					> ds->freq)
			div++;
	} else
		div = 0xC;

	conf = readl(&ds->regs->channel[ds->slave.cs].chconf);
	/* channel defaults - 1.5 clock TCS and FIFO mode for TX/RX */
	// modify for fast boot start 17/01/2014
	//conf |= OMAP3_MCSPI_CHCONF_TCS | OMAP3_MCSPI_CHCONF_FFEW |
	//		OMAP3_MCSPI_CHCONF_FFER;

	conf &= ~(OMAP3_MCSPI_CHCONF_TCS | OMAP3_MCSPI_CHCONF_FFEW |
			OMAP3_MCSPI_CHCONF_FFER);
	conf |= OMAP3_MCSPI_CHCONF_TCS;
	// modify for fast boot end 17/01/2014

	/* standard 4-wire master mode:  SCK, MOSI/out, MISO/in, nCS
	 * REVISIT: this controller could support SPI_3WIRE mode.
	 */
	conf &= ~(OMAP3_MCSPI_CHCONF_IS|OMAP3_MCSPI_CHCONF_DPE1);
	conf |= OMAP3_MCSPI_CHCONF_DPE0;

	/* wordlength */
	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
	conf |= (WORD_LEN - 1) << 7;

	/* set chipselect polarity; manage with FORCE */
	if (!(ds->mode & SPI_CS_HIGH))
		conf |= OMAP3_MCSPI_CHCONF_EPOL;	/* active-low; normal */
	else
		conf &= ~OMAP3_MCSPI_CHCONF_EPOL;

	/* set clock divisor */
	conf &= ~OMAP3_MCSPI_CHCONF_CLKD_MASK; // modify for fast write 20140609

	/* set SPI mode 0..3 */
	if (ds->mode & SPI_CPOL)
		conf |= OMAP3_MCSPI_CHCONF_POL;
	else
		conf &= ~OMAP3_MCSPI_CHCONF_POL;
	if (ds->mode & SPI_CPHA)
		conf |= OMAP3_MCSPI_CHCONF_PHA;
	else
		conf &= ~OMAP3_MCSPI_CHCONF_PHA;

	/* Transmit & receive mode */
	conf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;

	writel(conf, &ds->regs->channel[ds->slave.cs].chconf);
	return 0;
}

void spi_release_bus(struct spi_slave *slave)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);

	/* Reset the SPI hardware */
	spi_reset(ds);
}

// add start for fast write 20140609
int spi_xfer_write_fast(struct spi_slave *slave, unsigned int bitlen,
		const void *dout, void *din, unsigned long flags)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int	len, i,len_div4;
	unsigned int	*txp = dout;
	unsigned int		*rxp = din;
	unsigned int temp;
    
	if (bitlen == 0)
		/* Finish any previously submitted transfers */
		goto out;

	/*
	 * It's not clear how non-8-bit-aligned transfers are supposed to be
	 * represented as a stream of bytes...this is a limitation of
	 * the current SPI interface - here we terminate on receiving such a
	 * transfer request.
	 */
	if (bitlen % 8) {
		/* Errors always terminate an ongoing transfer */
		flags |= SPI_XFER_END;
		goto out;
	}

	len = bitlen / 8;

	if (flags & SPI_XFER_BEGIN) {
		/* enable McSPI channel */
		writel(OMAP3_MCSPI_CHCTRL_EN, &ds->regs->channel[ds->slave.cs].chctrl);

		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) | (0x00100000)),
				&ds->regs->channel[ds->slave.cs].chconf);
	}

    

	len_div4 = len/4;

	/* Keep writing 4 byte until done */
	for (i = 0; i < len_div4; i++) {

		/* wait till TX register is empty (TXS == 1) */
		while ((readl(&ds->regs->channel[ds->slave.cs].chstat) &
										 OMAP3_MCSPI_CHSTAT_TXS) == 0);


        /* Write the data */
		writel(*txp++, &ds->regs->channel[ds->slave.cs].tx);
	}

out:
	if (flags & SPI_XFER_END) {
		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) &
				 (~0x00100000)), &ds->regs->channel[ds->slave.cs].chconf);

		/* Disable McSPI channel */
		writel(0, &ds->regs->channel[ds->slave.cs].chctrl);

	}

	return 0;
}
// add end for fast write 20140609

int spi_xfer(struct spi_slave *slave, unsigned int bitlen,
		const void *dout, void *din, unsigned long flags)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int	len, i;
	const unsigned char	*txp = dout;
	unsigned char		*rxp = din;
	unsigned char temp;

	if (bitlen == 0)
		/* Finish any previously submitted transfers */
		goto out;

	/*
	 * It's not clear how non-8-bit-aligned transfers are supposed to be
	 * represented as a stream of bytes...this is a limitation of
	 * the current SPI interface - here we terminate on receiving such a
	 * transfer request.
	 */
	if (bitlen % 8) {
		/* Errors always terminate an ongoing transfer */
		flags |= SPI_XFER_END;
		goto out;
	}

	len = bitlen / 8;

	if (flags & SPI_XFER_BEGIN) {
		/* enable McSPI channel */
		writel(OMAP3_MCSPI_CHCTRL_EN, &ds->regs->channel[ds->slave.cs].chctrl);

		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) | (0x00100000)),
				&ds->regs->channel[ds->slave.cs].chconf);
	}

	/* Keep writing and reading 1 byte until done */
	for (i = 0; i < len; i++) {

		/* wait till TX register is empty (TXS == 1) */
		while ((readl(&ds->regs->channel[ds->slave.cs].chstat) &
										 OMAP3_MCSPI_CHSTAT_TXS) == 0);

		/* Write the data */
		if (txp) {
			writel(*txp, &ds->regs->channel[ds->slave.cs].tx);
			txp++;
		}
		else
			writel(0, &ds->regs->channel[ds->slave.cs].tx);

		/* Wait till RX register contains data (RXS == 1) */
		while ((readl(&ds->regs->channel[ds->slave.cs].chstat) &
										 OMAP3_MCSPI_CHSTAT_RXS) == 0);

		/* Read the data */
		if  (rxp) {
			*rxp = readl(&ds->regs->channel[ds->slave.cs].rx);
			rxp++;
		}
		else
			temp = readl(&ds->regs->channel[ds->slave.cs].rx);

	}

out:
	if (flags & SPI_XFER_END) {
		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) &
				 (~0x00100000)), &ds->regs->channel[ds->slave.cs].chconf);

		/* Disable McSPI channel */
		writel(0, &ds->regs->channel[ds->slave.cs].chctrl);

	}

	return 0;
}

// modify start delete swap byte order 20140610
// add for fast boot start 17/01/2014
int spi_xfer_read_fast(struct spi_slave *slave, unsigned int bitlen,
		const void *dout, void *din, unsigned long flags)
{
	struct omap3_spi_slave *ds = to_omap3_spi(slave);
	unsigned int	len, i,len_div4;
	const unsigned char	*txp = dout;
	unsigned int		*rxp = din;
	unsigned int temp;
	

	if (bitlen == 0 || rxp == 0)
		/* Finish any previously submitted transfers */
		goto out;

	/*
	 * It's not clear how non-8-bit-aligned transfers are supposed to be
	 * represented as a stream of bytes...this is a limitation of
	 * the current SPI interface - here we terminate on receiving such a
	 * transfer request.
	 */
	if (bitlen % 8) {
		/* Errors always terminate an ongoing transfer */
		flags |= SPI_XFER_END;
		goto out;
	}

	len = bitlen / 8;

	if (flags & SPI_XFER_BEGIN) {
		/* enable McSPI channel */
		writel(OMAP3_MCSPI_CHCTRL_EN, &ds->regs->channel[ds->slave.cs].chctrl);

		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) | (0x00100000)),
				&ds->regs->channel[ds->slave.cs].chconf);
	}

	len_div4 = len/4;

	/* Keep writing and reading 4 byte until done */
	for (i = 0; i < len_div4; i++) {

		/* Wait till RX register contains data (RXS == 1) */
		while ((readl(&ds->regs->channel[ds->slave.cs].chstat) &
										 OMAP3_MCSPI_CHSTAT_RXS) == 0);

		/* Read the data */
		*rxp++ = readl(&ds->regs->channel[ds->slave.cs].rx);
	}

	if(len_div4 * 4 < len)
	{
		/* Wait till RX register contains data (RXS == 1) */
		while ((readl(&ds->regs->channel[ds->slave.cs].chstat) &
										 OMAP3_MCSPI_CHSTAT_RXS) == 0);

		/* Read the data */
		temp = readl(&ds->regs->channel[ds->slave.cs].rx);
		
		unsigned char *temp_rxp =(unsigned char *)rxp;
		/* Keep writing and reading 1 byte until done */
		for (i = 0; i < len%4; i++) {
            *temp_rxp ++ = (unsigned char)(temp >> i*8);
		}
	}

out:
	if (flags & SPI_XFER_END) {
		writel((readl(&ds->regs->channel[ds->slave.cs].chconf) &
				 (~0x00100000)), &ds->regs->channel[ds->slave.cs].chconf);

		/* Disable McSPI channel */
		writel(0, &ds->regs->channel[ds->slave.cs].chctrl);

	}

	return 0;
}
// add for fast boot end 17/01/2014
// modify end delete swap byte order 20140610

int spi_cs_is_valid(unsigned int bus, unsigned int cs)
{
	return 1;
}

void spi_cs_activate(struct spi_slave *slave)
{
	/* nothing to do */
}

void spi_cs_deactivate(struct spi_slave *slave)
{
	/* nothing to do */
}

