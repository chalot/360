SECTIONS

{

    boot > 0x85C00000

      {

      -l ../../../xdctools_3_24_03_33/packages/ti/targets/rts6000/lib/boot.ae674<boot.oe674>(.text)

      } 
      
}

/* liuxu, 12/1/2013.
myrtslib > 0x86e00000

      {
      -l ../../tools/c6000_7_4_1/lib/rts6740_elf.lib
      } 
*/

/*liuxu, 04/24/2014, asign the "_Ipc_ResetVector" to a fix location for fast boot A8*/
