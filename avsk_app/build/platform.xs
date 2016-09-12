/*
 *  ======== platform.xs ========
 */
 
 
var MemSegDefine = xdc.loadCapsule("mem_segment_definition.xs");

Build.platformTable["ti.platforms.generic:DucatiPlatform_Core0"] =
{
    clockRate: 200.0,
    catalogName: "ti.catalog.arm.cortexm3",
    deviceName: "TMS320C6A8149",
    customMemoryMap: MemSegDefine.getMemSegmentDefinition(),
    codeMemory:"CODE_CORE_VIDEO_M3",
    dataMemory:"PRIVATE_DATA_CORE_VIDEO_M3",
    stackMemory:"PRIVATE_DATA_CORE_VIDEO_M3"
};

Build.platformTable["ti.platforms.generic:DucatiPlatform_Core1"] =
{
    clockRate: 200.0,
    catalogName: "ti.catalog.arm.cortexm3",
    deviceName: "TMS320C6A8149",
    customMemoryMap: MemSegDefine.getMemSegmentDefinition(),
    codeMemory:"CODE_CORE_VPSS_M3",
    dataMemory:"PRIVATE_DATA_CORE_VPSS_M3",
    stackMemory:"PRIVATE_DATA_CORE_VPSS_M3"
};

Build.platformTable["ti.platforms.generic:Cortex_A8"] =
{
    clockRate: 600.0,
    catalogName: "ti.catalog.arm.cortexa8",
    deviceName: "TMS320C6A8149",
    customMemoryMap: MemSegDefine.getMemSegmentDefinition(),
    codeMemory:"CODE_CORE_HOST",
    dataMemory:"PRIVATE_DATA_CORE_HOST",
    stackMemory:"PRIVATE_DATA_CORE_HOST"
};

Build.platformTable["ti.platforms.generic:C674_DSP"] =
{
    clockRate: 500.0,
    catalogName: "ti.catalog.c6000",
    deviceName: "TMS320C6A8149",
    customMemoryMap: MemSegDefine.getMemSegmentDefinition(),
    codeMemory:"CODE_CORE_DSP",
    dataMemory:"PRIVATE_DATA_CORE_DSP",
    stackMemory:"PRIVATE_DATA_CORE_DSP"
};


