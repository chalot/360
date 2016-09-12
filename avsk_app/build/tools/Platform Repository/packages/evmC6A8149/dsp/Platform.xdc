/*!
 * File generated by platform wizard. DO NOT MODIFY
 *
 liuxu, 11/12/2013, change it. 
 
 liuxu, 11/14/2013, change codeMemory.
 ["SHARED_MEM", 
                     {
                        base: 0x88100000,                    
                        space: "data",
                        name: "SHARED_MEM",
                        len: 0x02000000,                    
                        access: "RWX",
                     }
                ],
                
  ["SHARED_FRAME_BUFFER", 
                     {
                        base: 0x8A100000,                    
                        space: "data",
                        name: "SHARED_FRAME_BUFFER",
                        len: 0x05E00000,                    
                        access: "RWX",
                     }
                ],
                
   override config string codeMemory  = "CODE_CORE_DSP"; 
   
   liuxu, 11/20/2013, rename DSP_BOP_EMEM section.  
                
 */

metaonly module Platform inherits xdc.platform.IPlatform {

    config ti.platforms.generic.Platform.Instance CPU =
        ti.platforms.generic.Platform.create("CPU", {
            clockRate:      500.0,                                       
            catalogName:    "ti.catalog.c6000",
            deviceName:     "TMS320C6A8149",
            revision:       "",
            customMemoryMap: 
           [ 
				["VECS_CORE_0", 
                     {
                        base: 0x0,                    
                        space: "code",
                        name: "VECS_CORE_0",
                        len: 0x400,                    
                        access: "RWX",
                     }
                ],
                ["VECS_CORE_1", 
                     {
                        base: 0x400,                    
                        space: "code",
                        name: "VECS_CORE_1",
                        len: 0x600,                    
                        access: "RWX",
                     }
                ],
                ["L2_SRAM", 
                     {
                        base: 0x1000,                    
                        space: "code/data",
                        name: "L2_SRAM",
                        len: (0x40000 - 0x1000),                    
                        access: "RWX",
                     }
                ],
                ["DSP_L2RAM", 
                     {
                        base: 0x00800000,                    
                        space: "data",
                        name: "DSP_L2RAM",
                        len: 0x00010000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_L2DATA", 
                     {
                        base: 0x00810000,                    
                        space: "data",
                        name: "DSP_L2DATA",
                        len: 0x00010000,                    
                        access: "RWX",
                     }
                ],
                ["OCMC_RAM0", 
                     {
                        base: 0x40300000,                    
                        space: "data",
                        name: "OCMC_RAM0",
                        len: 0x0007fe00,                    
                        access: "RWX",
                     }
                ],
                ["DSP_SYNC_AREA", 
                     {
                        base: 0x4037fe00,                    
                        space: "data",
                        name: "DSP_SYNC_AREA",
                        len: 0x00000100,                    
                        access: "RWX",
                     }
                ],
                ["OCMC_RAM1", 
                     {
                        base: 0x40400000,                    
                        space: "data",
                        name: "OCMC_RAM1",
                        len: 0x00040000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_WMEM", 
                     {
                        base: 0x42840200,                    
                        space: "data",
                        name: "DSP_WMEM",
                        len: 0x00007E00,                    
                        access: "RWX",
                     }
                ],
                ["DSP_IMEMLA", 
                     {
                        base: 0x42850000,                    
                        space: "data",
                        name: "DSP_IMEMLA",
                        len: 0x00004000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_IMEMHA", 
                     {
                        base: 0x42854000,                    
                        space: "data",
                        name: "DSP_IMEMHA",
                        len: 0x00004000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_IMEMLB", 
                     {
                        base: 0x42870000,                    
                        space: "data",
                        name: "DSP_IMEMLB",
                        len: 0x00004000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_IMEMHB", 
                     {
                        base: 0x42874000,                    
                        space: "data",
                        name: "DSP_IMEMHB",
                        len: 0x00004000,                    
                        access: "RWX",
                     }
                ],
                ["CONFIG_REGISTER_SPACE", 
                     {
                        base: 0x42878000,                    
                        space: "data",
                        name: "CONFIG_REGISTER_SPACE",
                        len: 0x167A8000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_MAIL_EMEM", 
                     {
                        base: 0x59020000,                    
                        space: "data",
                        name: "DSP_MAIL_EMEM",
                        len: 0x00000500,                    
                        access: "RWX",
                     }
                ],
                ["TILER_SYSTEM_SPACE", 
                     {
                        base: 0x60000000,                    
                        space: "data",
                        name: "TILER_SYSTEM_SPACE",
                        len: 0x20000000,                    
                        access: "RWX",
                     }
                ],
                ["SHARED_CTRL", 
                     {
                        base: 0x80000000,                    
                        space: "data",
                        name: "SHARED_CTRL",
                        len: 0x01000000,                    
                        access: "RWX",
                     }
                ],         
                ["CODE_CORE_DSP", 
                     {
                        base: 0x85C00000,                    
                        space: "code",
                        name: "CODE_CORE_DSP",
                        len: 0x01000000,                    
                        access: "RWX",
                     }
                ],
                ["PRIVATE_DATA_CORE_DSP", 
                     {
                        base: 0x86C00000,                    
                        space: "data",
                        name: "PRIVATE_DATA_CORE_DSP",
                        len: 0x400000,                    
                        access: "RWX",
                     }
                ],
	            ["SHARED_MEM", 
                     {
                        base: 0x85B00000,                    
                        space: "data",
                        name: "SHARED_MEM",
                        len: 0x100000,                    
                        access: "RWX",
                     }
                ],
                ["SHARED_FRAME_BUFFER", 
                     {
                        base: 0x81800000,                    
                        space: "data",
                        name: "SHARED_FRAME_BUFFER",
                        len: 0x3f00000,                    
                        access: "RWX",
                     }
                ],
                ["SHARED_LOG_MEM", 
                     {
                        base: 0x8FF00000,                    
                        space: "data",
                        name: "SHARED_LOG_MEM",
                        len: 0x00090000,                    
                        access: "RWX",
                     }
                ],
                ["DSP_HEAP", 
                     {
                        base: 0x87000000,                    
                        space: "data",
                        name: "DSP_HEAP",
                        len: 0x200000,                    
                        access: "RWX",
                     }
                ],
                ["CONFIG_REGISTER_SPACE_1", 
                     {
                        base: 0x59020500,                    
                        space: "data",
                        name: "CONFIG_REGISTER_SPACE_1",
                        len: 0x06FDFB00,                    
                        access: "RWX",
                     }
                ],
           ],
          l1DMode:"32k",
          l1PMode:"32k",
          l2Mode:"0k",

    });
    
instance :
    
    override config string codeMemory  = "PRIVATE_DATA_CORE_DSP";   
    override config string dataMemory  = "PRIVATE_DATA_CORE_DSP";                                
    override config string stackMemory = "PRIVATE_DATA_CORE_DSP";
    
}