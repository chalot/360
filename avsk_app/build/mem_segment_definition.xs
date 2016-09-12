/*
 *  ======== mem_segment_definition.xs ========
 */

function getMemSegmentDefinition()
{
    var memory = new Array();

    memory[0] = ["VECS_CORE_0",
    {
          name: "VECS_CORE_0",
          base: 0x0,
          len:  0x400,
          space: "code"
    }];

    memory[1] = ["VECS_CORE_1",
    {
          name: "VECS_CORE_1",
          base: 0x400,
          len:  0x600,
          space: "code"
    }];

    memory[2] = ["L2_SRAM",
    {
          name: "L2_SRAM",
          base: 0x1000,
          len:  (0x40000 - 0x1000),
          space: "code/data"
    }];

    memory[3] = ["DSP_L2RAM",
    {
          name: "DSP_L2RAM",
          base: 0x00800000,
          len:  0x00010000,
          space: "data"
    }];
    
    memory[4] = ["DSP_L2DATA",
    {
          name: "DSP_L2DATA",
          base: 0x00810000,
          len:  0x00010000,
          space: "data"
    }];

    memory[5] = ["OCMC_RAM0",
    {
          name: "OCMC_RAM0",
          base: 0x40300000,
          len:  0x0007fe00,
          space: "data"
    }];

    memory[6] = ["DSP_SYNC_AREA",
    {
          name: "DSP_SYNC_AREA",
          base: 0x4037fe00,
          len:  0x00000100,
          space: "data"
    }];

    memory[7] = ["OCMC_RAM1",
    {
          name: "OCMC_RAM1",
          base: 0x40400000,
          len:  0x00040000,
          space: "data"
    }];

    memory[8] = ["DSP_WMEM",
    {
          name: "DSP_WMEM",
          base: 0x42840200,
          len:  0x00007E00,
          space: "data"
    }];
    
    memory[9] = ["DSP_IMEMLA",
    {
          name: "DSP_IMEMLA",
          base: 0x42850000,
          len:  0x00004000,
          space: "data"
    }];
    
    memory[10] = ["DSP_IMEMHA",
    {
          name: "DSP_IMEMHA",
          base: 0x42854000,
          len:  0x00004000,
          space: "data"
    }];

    memory[11] = ["DSP_IMEMLB",
    {
          name: "DSP_IMEMLB",
          base: 0x42870000,
          len:  0x00004000,
          space: "data"
    }];
    
    memory[12] = ["DSP_IMEMHB",
    {
          name: "DSP_IMEMHB",
          base: 0x42874000,
          len:  0x00004000,
          space: "data"
    }];
    
    memory[13] = ["CONFIG_REGISTER_SPACE",
    {
          name: "CONFIG_REGISTER_SPACE",
          base: 0x42878000,
          len:  0x167A8000,
          space: "data"
    }];

    memory[14] = ["DSP_MAIL_EMEM",
    {
          name: "DSP_MAIL_EMEM",
          base: 0x59020000,
          len:  0x00000500,
          space: "data"
    }];

    memory[15] = ["TILER_SYSTEM_SPACE",
    {
          name: "TILER_SYSTEM_SPACE",
          base: 0x60000000,
          len:  0x20000000,
          space: "data"
    }];

    memory[16] = ["SHARED_CTRL",
    {
          name: "SHARED_CTRL",
          base: 0x80000000,
          len:  0x01000000,
          space: "data"
    }];

    memory[17] = ["CODE_CORE_HOST",
    {
          name: "CODE_CORE_HOST",
          base: 0x81000000,
          len:  0x00100000,
          space: "code"
    }];

    memory[18] = ["PRIVATE_DATA_CORE_HOST",
    {
          name: "PRIVATE_DATA_CORE_HOST",
          base: 0x81100000,
          len:  0x01400000,
          space: "data"
    }];

    memory[19] = ["CODE_CORE_VIDEO_M3",
    {
          name: "CODE_CORE_VIDEO_M3",
          base: 0x82500000,
          len:  0x00100000,
          space: "code"
    }];

    memory[20] = ["PRIVATE_DATA_CORE_VIDEO_M3",
    {
          name: "PRIVATE_DATA_CORE_VIDEO_M3",
          base: 0x82600000,
          len:  0x01160000,
          space: "data"
    }];

    memory[21] = ["CODE_CORE_VPSS_M3",
    {
          name: "CODE_CORE_VPSS_M3",
          base: 0x83760000,
          len:  0x00200000,
          space: "code"
    }];

    memory[22] = ["PRIVATE_DATA_CORE_VPSS_M3",
    {
          name: "PRIVATE_DATA_CORE_VPSS_M3",
          base: 0x83960000,
          len:  0x022A0000,
          space: "data"
    }];

    memory[23] = ["CODE_CORE_DSP",
    {
          name: "CODE_CORE_DSP",
          base: 0x85C00000,
          len:  0x01000000,
          space: "code"
    }];

    memory[24] = ["PRIVATE_DATA_CORE_DSP",
    {
          name: "PRIVATE_DATA_CORE_DSP",
          base: 0x86C00000,
          len:  0x01000000,
          space: "data"
    }];

    memory[25] = ["HDVPSS_DESCRIPTOR_NON_CACHED",
    {
          name: "HDVPSS_DESCRIPTOR_NON_CACHED",
          base: 0x87C00000,
          len:  0x00200000,
          space: "data"
    }];

    memory[26] = ["HDVPSS_SHARED_MEM",
    {
          name: "HDVPSS_SHARED_MEM",
          base: 0x87E00000,
          len:  0x00300000,
          space: "data"
    }];

    memory[27] = ["SHARED_MEM",
    {
          name: "SHARED_MEM",
          base: 0x88100000,
          len:  0x02000000,
          space: "data"
    }];

    memory[28] = ["SHARED_FRAME_BUFFER",
    {
          name: "SHARED_FRAME_BUFFER",
          base: 0x8A100000,
          len:  0x05E00000,
          space: "data"
    }];
    
    memory[29] = ["SHARED_LOG_MEM",
    {
          name: "SHARED_LOG_MEM",
          base: 0x8FF00000,
          len:  0x00090000,
          space: "data"
    }];

	memory[30] = ["DSP_BOP_EMEM",
    {
          name: "DSP_BOP_EMEM",
          base: 0x90230000,
          len:  0x00E70000,
          space: "data"
    }];

    memory[31] = ["CONFIG_REGISTER_SPACE_1",
    {
          name: "CONFIG_REGISTER_SPACE_1",
          base: 0x59020500,
          len:  0x06FDFB00,
          space: "data"
    }];
    
    return (memory);
}
