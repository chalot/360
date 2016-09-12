/*!
 * File generated by platform wizard. DO NOT MODIFY
 *
 */

metaonly module Platform inherits xdc.platform.IPlatform {

    config ti.platforms.generic.Platform.Instance CPU =
        ti.platforms.generic.Platform.create("CPU", {
            clockRate:      200.0,                                       
            catalogName:    "ti.catalog.arm.cortexm3",
            deviceName:     "TMS320C6A8149",
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
                ["OCMC_RAM0", 
                     {
                        base: 0x40300000,                    
                        space: "data",
                        name: "OCMC_RAM0",
                        len: 0x0007fe00,                    
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
                ["CONFIG_REGISTER_SPACE", 
                     {
                        base: 0x42878000,                    
                        space: "data",
                        name: "CONFIG_REGISTER_SPACE",
                        len: 0x167A8000,                    
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
                ["CODE_CORE_VIDEO_M3", 
                     {
                        base: 0x82500000,                    
                        space: "code",
                        name: "CODE_CORE_VIDEO_M3",
                        len: 0x00100000,                    
                        access: "RWX",
                     }
                ],
                ["PRIVATE_DATA_CORE_VIDEO_M3", 
                     {
                        base: 0x82600000,                    
                        space: "data",
                        name: "PRIVATE_DATA_CORE_VIDEO_M3",
                        len: 0x01160000,                    
                        access: "RWX",
                     }
                ],               
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
                ["SHARED_LOG_MEM", 
                     {
                        base: 0x8FF00000,                    
                        space: "data",
                        name: "SHARED_LOG_MEM",
                        len: 0x00090000,                    
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

    });
    
instance :
    
    override config string codeMemory  = "CODE_CORE_VIDEO_M3";   
    override config string dataMemory  = "PRIVATE_DATA_CORE_VIDEO_M3";                                
    override config string stackMemory = "PRIVATE_DATA_CORE_VIDEO_M3";
    
}
