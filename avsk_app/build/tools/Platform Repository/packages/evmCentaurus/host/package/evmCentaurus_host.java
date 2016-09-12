/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-y25
 */
import java.util.*;
import org.mozilla.javascript.*;
import xdc.services.intern.xsr.*;
import xdc.services.spec.Session;

public class evmCentaurus_host
{
    static final String VERS = "@(#) xdc-y25\n";

    static final Proto.Elm $$T_Bool = Proto.Elm.newBool();
    static final Proto.Elm $$T_Num = Proto.Elm.newNum();
    static final Proto.Elm $$T_Str = Proto.Elm.newStr();
    static final Proto.Elm $$T_Obj = Proto.Elm.newObj();

    static final Proto.Fxn $$T_Met = new Proto.Fxn(null, null, 0, -1, false);
    static final Proto.Map $$T_Map = new Proto.Map($$T_Obj);
    static final Proto.Arr $$T_Vec = new Proto.Arr($$T_Obj);

    static final XScriptO $$DEFAULT = Value.DEFAULT;
    static final Object $$UNDEF = Undefined.instance;

    static final Proto.Obj $$Package = (Proto.Obj)Global.get("$$Package");
    static final Proto.Obj $$Module = (Proto.Obj)Global.get("$$Module");
    static final Proto.Obj $$Instance = (Proto.Obj)Global.get("$$Instance");
    static final Proto.Obj $$Params = (Proto.Obj)Global.get("$$Params");

    static final Object $$objFldGet = Global.get("$$objFldGet");
    static final Object $$objFldSet = Global.get("$$objFldSet");
    static final Object $$proxyGet = Global.get("$$proxyGet");
    static final Object $$proxySet = Global.get("$$proxySet");
    static final Object $$delegGet = Global.get("$$delegGet");
    static final Object $$delegSet = Global.get("$$delegSet");

    Scriptable xdcO;
    Session ses;
    Value.Obj om;

    boolean isROV;
    boolean isCFG;

    Proto.Obj pkgP;
    Value.Obj pkgV;

    ArrayList<Object> imports = new ArrayList<Object>();
    ArrayList<Object> loggables = new ArrayList<Object>();
    ArrayList<Object> mcfgs = new ArrayList<Object>();
    ArrayList<Object> icfgs = new ArrayList<Object>();
    ArrayList<String> inherits = new ArrayList<String>();
    ArrayList<Object> proxies = new ArrayList<Object>();
    ArrayList<Object> sizes = new ArrayList<Object>();
    ArrayList<Object> tdefs = new ArrayList<Object>();

    void $$IMPORTS()
    {
        Global.callFxn("loadPackage", xdcO, "xdc");
        Global.callFxn("loadPackage", xdcO, "xdc.corevers");
        Global.callFxn("loadPackage", xdcO, "xdc.platform");
        Global.callFxn("loadPackage", xdcO, "ti.platforms.generic");
    }

    void $$OBJECTS()
    {
        pkgP = (Proto.Obj)om.bind("evmCentaurus.host.Package", new Proto.Obj());
        pkgV = (Value.Obj)om.bind("evmCentaurus.host", new Value.Obj("evmCentaurus.host", pkgP));
    }

    void Platform$$OBJECTS()
    {
        Proto.Obj po, spo;
        Value.Obj vo;

        po = (Proto.Obj)om.bind("evmCentaurus.host.Platform.Module", new Proto.Obj());
        vo = (Value.Obj)om.bind("evmCentaurus.host.Platform", new Value.Obj("evmCentaurus.host.Platform", po));
        pkgV.bind("Platform", vo);
        // decls 
        om.bind("evmCentaurus.host.Platform.Board", om.findStrict("xdc.platform.IPlatform.Board", "evmCentaurus.host"));
        om.bind("evmCentaurus.host.Platform.Memory", om.findStrict("xdc.platform.IPlatform.Memory", "evmCentaurus.host"));
        // insts 
        Object insP = om.bind("evmCentaurus.host.Platform.Instance", new Proto.Obj());
        po = (Proto.Obj)om.bind("evmCentaurus.host.Platform$$Object", new Proto.Obj());
        Object objP = om.bind("evmCentaurus.host.Platform.Object", new Proto.Str(po, true));
        po = (Proto.Obj)om.bind("evmCentaurus.host.Platform$$Params", new Proto.Obj());
        om.bind("evmCentaurus.host.Platform.Params", new Proto.Str(po, true));
    }

    void Platform$$CONSTS()
    {
        // module Platform
    }

    void Platform$$CREATES()
    {
        Proto.Fxn fxn;
        StringBuilder sb;

        fxn = (Proto.Fxn)om.bind("evmCentaurus.host.Platform$$create", new Proto.Fxn(om.findStrict("evmCentaurus.host.Platform.Module", "evmCentaurus.host"), om.findStrict("evmCentaurus.host.Platform.Instance", "evmCentaurus.host"), 3, 2, false));
                fxn.addArg(0, "name", $$T_Str, $$UNDEF);
                fxn.addArg(1, "args", $$T_Obj, $$UNDEF);
                fxn.addArg(2, "__params", (Proto)om.findStrict("evmCentaurus.host.Platform.Params", "evmCentaurus.host"), Global.newObject());
        sb = new StringBuilder();
        sb.append("evmCentaurus$host$Platform$$create = function( name, args, __params ) {\n");
            sb.append("var __mod = xdc.om['evmCentaurus.host.Platform'];\n");
            sb.append("var __inst = xdc.om['evmCentaurus.host.Platform.Instance'].$$make();\n");
            sb.append("__inst.$$bind('$package', xdc.om['evmCentaurus.host']);\n");
            sb.append("__inst.$$bind('$index', __mod.$instances.length);\n");
            sb.append("__inst.$$bind('$category', 'Instance');\n");
            sb.append("__inst.$$bind('$args', {name:name, args:args});\n");
            sb.append("__inst.$$bind('$module', __mod);\n");
            sb.append("__mod.$instances.$add(__inst);\n");
            sb.append("__inst.externalMemoryMap = __mod.PARAMS.externalMemoryMap;\n");
            sb.append("__inst.customMemoryMap = __mod.PARAMS.customMemoryMap;\n");
            sb.append("__inst.renameMap = __mod.PARAMS.renameMap;\n");
            sb.append("__inst.dataMemory = __mod.PARAMS.dataMemory;\n");
            sb.append("__inst.codeMemory = __mod.PARAMS.codeMemory;\n");
            sb.append("__inst.stackMemory = __mod.PARAMS.stackMemory;\n");
            sb.append("__inst.sectMap = __mod.PARAMS.sectMap;\n");
            sb.append("for (var __p in __params) __inst[__p] = __params[__p];\n");
            sb.append("var save = xdc.om.$curpkg;\n");
            sb.append("xdc.om.$$bind('$curpkg', __mod.$package.$name);\n");
            sb.append("__mod.instance$meta$init.$fxn.apply(__inst, [name, args]);\n");
            sb.append("xdc.om.$$bind('$curpkg', save);\n");
            sb.append("__inst.$$bless();\n");
            sb.append("return __inst;\n");
        sb.append("}\n");
        Global.eval(sb.toString());
        fxn = (Proto.Fxn)om.bind("evmCentaurus.host.Platform$$construct", new Proto.Fxn(om.findStrict("evmCentaurus.host.Platform.Module", "evmCentaurus.host"), null, 4, 2, false));
                fxn.addArg(0, "__obj", (Proto)om.findStrict("evmCentaurus.host.Platform$$Object", "evmCentaurus.host"), null);
                fxn.addArg(1, "name", $$T_Str, $$UNDEF);
                fxn.addArg(2, "args", $$T_Obj, $$UNDEF);
                fxn.addArg(3, "__params", (Proto)om.findStrict("evmCentaurus.host.Platform.Params", "evmCentaurus.host"), Global.newObject());
        sb = new StringBuilder();
        sb.append("evmCentaurus$host$Platform$$construct = function( __obj, name, args, __params ) {\n");
            sb.append("var __mod = xdc.om['evmCentaurus.host.Platform'];\n");
            sb.append("var __inst = __obj;\n");
            sb.append("__inst.$$bind('$args', {name:name, args:args});\n");
            sb.append("__inst.$$bind('$module', __mod);\n");
            sb.append("__mod.$objects.$add(__inst);\n");
            sb.append("__inst.externalMemoryMap = __mod.PARAMS.externalMemoryMap;\n");
            sb.append("__inst.customMemoryMap = __mod.PARAMS.customMemoryMap;\n");
            sb.append("__inst.renameMap = __mod.PARAMS.renameMap;\n");
            sb.append("__inst.dataMemory = __mod.PARAMS.dataMemory;\n");
            sb.append("__inst.codeMemory = __mod.PARAMS.codeMemory;\n");
            sb.append("__inst.stackMemory = __mod.PARAMS.stackMemory;\n");
            sb.append("__inst.sectMap = __mod.PARAMS.sectMap;\n");
            sb.append("for (var __p in __params) __inst[__p] = __params[__p];\n");
            sb.append("__inst.$$bless();\n");
            sb.append("return null;\n");
        sb.append("}\n");
        Global.eval(sb.toString());
    }

    void Platform$$FUNCTIONS()
    {
        Proto.Fxn fxn;

    }

    void Platform$$SIZES()
    {
    }

    void Platform$$TYPES()
    {
        Scriptable cap;
        Proto.Obj po;
        Proto.Str ps;
        Proto.Typedef pt;
        Object fxn;

        cap = (Scriptable)Global.callFxn("loadCapsule", xdcO, "evmCentaurus/host/Platform.xs");
        om.bind("evmCentaurus.host.Platform$$capsule", cap);
        po = (Proto.Obj)om.findStrict("evmCentaurus.host.Platform.Module", "evmCentaurus.host");
        po.init("evmCentaurus.host.Platform.Module", om.findStrict("xdc.platform.IPlatform.Module", "evmCentaurus.host"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("CPU", (Proto)om.findStrict("ti.platforms.generic.Platform.Instance", "evmCentaurus.host"), $$UNDEF, "wh");
                po.addFxn("create", (Proto.Fxn)om.findStrict("evmCentaurus.host.Platform$$create", "evmCentaurus.host"), Global.get("evmCentaurus$host$Platform$$create"));
                po.addFxn("construct", (Proto.Fxn)om.findStrict("evmCentaurus.host.Platform$$construct", "evmCentaurus.host"), Global.get("evmCentaurus$host$Platform$$construct"));
        fxn = Global.get(cap, "module$use");
        if (fxn != null) om.bind("evmCentaurus.host.Platform$$module$use", true);
        if (fxn != null) po.addFxn("module$use", $$T_Met, fxn);
        fxn = Global.get(cap, "module$meta$init");
        if (fxn != null) om.bind("evmCentaurus.host.Platform$$module$meta$init", true);
        if (fxn != null) po.addFxn("module$meta$init", $$T_Met, fxn);
        fxn = Global.get(cap, "instance$meta$init");
        if (fxn != null) om.bind("evmCentaurus.host.Platform$$instance$meta$init", true);
        if (fxn != null) po.addFxn("instance$meta$init", $$T_Met, fxn);
        fxn = Global.get(cap, "module$validate");
        if (fxn != null) om.bind("evmCentaurus.host.Platform$$module$validate", true);
        if (fxn != null) po.addFxn("module$validate", $$T_Met, fxn);
        po = (Proto.Obj)om.findStrict("evmCentaurus.host.Platform.Instance", "evmCentaurus.host");
        po.init("evmCentaurus.host.Platform.Instance", om.findStrict("xdc.platform.IPlatform.Instance", "evmCentaurus.host"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("codeMemory", $$T_Str, "CODE_CORE_HOST", "wh");
        po.addFld("dataMemory", $$T_Str, "PRIVATE_DATA_CORE_HOST", "wh");
        po.addFld("stackMemory", $$T_Str, "PRIVATE_DATA_CORE_HOST", "wh");
                fxn = Global.get(cap, "getCpuDataSheet");
                if (fxn != null) po.addFxn("getCpuDataSheet", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCpuDataSheet", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getCreateArgs");
                if (fxn != null) po.addFxn("getCreateArgs", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCreateArgs", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getExeContext");
                if (fxn != null) po.addFxn("getExeContext", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExeContext", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getExecCmd");
                if (fxn != null) po.addFxn("getExecCmd", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExecCmd", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getLinkTemplate");
                if (fxn != null) po.addFxn("getLinkTemplate", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getLinkTemplate", "evmCentaurus.host"), fxn);
        po = (Proto.Obj)om.findStrict("evmCentaurus.host.Platform$$Params", "evmCentaurus.host");
        po.init("evmCentaurus.host.Platform.Params", om.findStrict("xdc.platform.IPlatform$$Params", "evmCentaurus.host"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("codeMemory", $$T_Str, "CODE_CORE_HOST", "wh");
        po.addFld("dataMemory", $$T_Str, "PRIVATE_DATA_CORE_HOST", "wh");
        po.addFld("stackMemory", $$T_Str, "PRIVATE_DATA_CORE_HOST", "wh");
        po = (Proto.Obj)om.findStrict("evmCentaurus.host.Platform$$Object", "evmCentaurus.host");
        po.init("evmCentaurus.host.Platform.Object", om.findStrict("evmCentaurus.host.Platform.Instance", "evmCentaurus.host"));
                fxn = Global.get(cap, "getCpuDataSheet");
                if (fxn != null) po.addFxn("getCpuDataSheet", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCpuDataSheet", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getCreateArgs");
                if (fxn != null) po.addFxn("getCreateArgs", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCreateArgs", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getExeContext");
                if (fxn != null) po.addFxn("getExeContext", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExeContext", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getExecCmd");
                if (fxn != null) po.addFxn("getExecCmd", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExecCmd", "evmCentaurus.host"), fxn);
                fxn = Global.get(cap, "getLinkTemplate");
                if (fxn != null) po.addFxn("getLinkTemplate", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getLinkTemplate", "evmCentaurus.host"), fxn);
    }

    void Platform$$ROV()
    {
    }

    void $$SINGLETONS()
    {
        pkgP.init("evmCentaurus.host.Package", (Proto.Obj)om.findStrict("xdc.IPackage.Module", "evmCentaurus.host"));
        pkgP.bind("$capsule", $$UNDEF);
        pkgV.init2(pkgP, "evmCentaurus.host", Value.DEFAULT, false);
        pkgV.bind("$name", "evmCentaurus.host");
        pkgV.bind("$category", "Package");
        pkgV.bind("$$qn", "evmCentaurus.host.");
        pkgV.bind("$vers", Global.newArray());
        Value.Map atmap = (Value.Map)pkgV.getv("$attr");
        atmap.seal("length");
        imports.clear();
        pkgV.bind("$imports", imports);
        StringBuilder sb = new StringBuilder();
        sb.append("var pkg = xdc.om['evmCentaurus.host'];\n");
        sb.append("if (pkg.$vers.length >= 3) {\n");
            sb.append("pkg.$vers.push(Packages.xdc.services.global.Vers.getDate(xdc.csd() + '/..'));\n");
        sb.append("}\n");
        sb.append("pkg.build.libraries = [\n");
        sb.append("];\n");
        sb.append("pkg.build.libDesc = [\n");
        sb.append("];\n");
        Global.eval(sb.toString());
    }

    void Platform$$SINGLETONS()
    {
        Proto.Obj po;
        Value.Obj vo;

        vo = (Value.Obj)om.findStrict("evmCentaurus.host.Platform", "evmCentaurus.host");
        po = (Proto.Obj)om.findStrict("evmCentaurus.host.Platform.Module", "evmCentaurus.host");
        vo.init2(po, "evmCentaurus.host.Platform", $$DEFAULT, false);
        vo.bind("Module", po);
        vo.bind("$category", "Module");
        vo.bind("$capsule", om.findStrict("evmCentaurus.host.Platform$$capsule", "evmCentaurus.host"));
        vo.bind("Instance", om.findStrict("evmCentaurus.host.Platform.Instance", "evmCentaurus.host"));
        vo.bind("Params", om.findStrict("evmCentaurus.host.Platform.Params", "evmCentaurus.host"));
        vo.bind("PARAMS", ((Proto.Str)om.findStrict("evmCentaurus.host.Platform.Params", "evmCentaurus.host")).newInstance());
        vo.bind("$package", om.findStrict("evmCentaurus.host", "evmCentaurus.host"));
        tdefs.clear();
        proxies.clear();
        mcfgs.clear();
        icfgs.clear();
        inherits.clear();
        vo.bind("Board", om.findStrict("xdc.platform.IPlatform.Board", "evmCentaurus.host"));
        tdefs.add(om.findStrict("xdc.platform.IPlatform.Board", "evmCentaurus.host"));
        vo.bind("Memory", om.findStrict("xdc.platform.IPlatform.Memory", "evmCentaurus.host"));
        tdefs.add(om.findStrict("xdc.platform.IPlatform.Memory", "evmCentaurus.host"));
        vo.bind("MemoryMap", om.findStrict("xdc.platform.IPlatform.MemoryMap", "evmCentaurus.host"));
        vo.bind("$$tdefs", Global.newArray(tdefs.toArray()));
        vo.bind("$$proxies", Global.newArray(proxies.toArray()));
        vo.bind("$$mcfgs", Global.newArray(mcfgs.toArray()));
        vo.bind("$$icfgs", Global.newArray(icfgs.toArray()));
        inherits.add("xdc.platform");
        vo.bind("$$inherits", Global.newArray(inherits.toArray()));
        ((Value.Arr)pkgV.getv("$modules")).add(vo);
        ((Value.Arr)om.findStrict("$modules", "evmCentaurus.host")).add(vo);
        vo.bind("$$instflag", 1);
        vo.bind("$$iobjflag", 1);
        vo.bind("$$sizeflag", 1);
        vo.bind("$$dlgflag", 0);
        vo.bind("$$iflag", 1);
        vo.bind("$$romcfgs", "|");
        vo.bind("$$nortsflag", 0);
        Proto.Str ps = (Proto.Str)vo.find("Module_State");
        if (ps != null) vo.bind("$object", ps.newInstance());
        vo.bind("$$meta_iobj", om.has("evmCentaurus.host.Platform$$instance$static$init", null) ? 1 : 0);
        vo.bind("$$fxntab", Global.newArray());
        vo.bind("$$logEvtCfgs", Global.newArray());
        vo.bind("$$errorDescCfgs", Global.newArray());
        vo.bind("$$assertDescCfgs", Global.newArray());
        Value.Map atmap = (Value.Map)vo.getv("$attr");
        atmap.seal("length");
        vo.bind("Object", om.findStrict("evmCentaurus.host.Platform.Object", "evmCentaurus.host"));
        pkgV.bind("Platform", vo);
        ((Value.Arr)pkgV.getv("$unitNames")).add("Platform");
    }

    void $$INITIALIZATION()
    {
        Value.Obj vo;

        if (isCFG) {
        }//isCFG
        Global.callFxn("module$meta$init", (Scriptable)om.findStrict("evmCentaurus.host.Platform", "evmCentaurus.host"));
        vo = (Value.Obj)om.findStrict("evmCentaurus.host.Platform", "evmCentaurus.host");
        Global.put(vo, "CPU", Global.callFxn("create", (Scriptable)om.find("ti.platforms.generic.Platform"), "CPU", Global.newObject("clockRate", 600.0, "catalogName", "ti.catalog.arm.cortexa8", "deviceName", "TMS320DM8148", "customMemoryMap", Global.newArray(new Object[]{Global.newArray(new Object[]{"VECS_CORE_0", Global.newObject("base", 0x0L, "space", "code", "name", "VECS_CORE_0", "len", 0x400L, "access", "RWX")}), Global.newArray(new Object[]{"VECS_CORE_1", Global.newObject("base", 0x400L, "space", "code", "name", "VECS_CORE_1", "len", 0x600L, "access", "RWX")}), Global.newArray(new Object[]{"L2_SRAM", Global.newObject("base", 0x1000L, "space", "code/data", "name", "L2_SRAM", "len", (Global.eval("0x40000 - 0x1000")), "access", "RWX")}), Global.newArray(new Object[]{"DSP_L2RAM", Global.newObject("base", 0x00800000L, "space", "data", "name", "DSP_L2RAM", "len", 0x00010000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_L2DATA", Global.newObject("base", 0x00810000L, "space", "data", "name", "DSP_L2DATA", "len", 0x00010000L, "access", "RWX")}), Global.newArray(new Object[]{"OCMC_RAM0", Global.newObject("base", 0x40300000L, "space", "data", "name", "OCMC_RAM0", "len", 0x0007fe00L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_SYNC_AREA", Global.newObject("base", 0x4037fe00L, "space", "data", "name", "DSP_SYNC_AREA", "len", 0x00000100L, "access", "RWX")}), Global.newArray(new Object[]{"OCMC_RAM1", Global.newObject("base", 0x40400000L, "space", "data", "name", "OCMC_RAM1", "len", 0x00040000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_WMEM", Global.newObject("base", 0x42840200L, "space", "data", "name", "DSP_WMEM", "len", 0x00007E00L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_IMEMLA", Global.newObject("base", 0x42850000L, "space", "data", "name", "DSP_IMEMLA", "len", 0x00004000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_IMEMHA", Global.newObject("base", 0x42854000L, "space", "data", "name", "DSP_IMEMHA", "len", 0x00004000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_IMEMLB", Global.newObject("base", 0x42870000L, "space", "data", "name", "DSP_IMEMLB", "len", 0x00004000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_IMEMHB", Global.newObject("base", 0x42874000L, "space", "data", "name", "DSP_IMEMHB", "len", 0x00004000L, "access", "RWX")}), Global.newArray(new Object[]{"CONFIG_REGISTER_SPACE", Global.newObject("base", 0x42878000L, "space", "data", "name", "CONFIG_REGISTER_SPACE", "len", 0x167A8000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_MAIL_EMEM", Global.newObject("base", 0x59020000L, "space", "data", "name", "DSP_MAIL_EMEM", "len", 0x00000500L, "access", "RWX")}), Global.newArray(new Object[]{"TILER_SYSTEM_SPACE", Global.newObject("base", 0x60000000L, "space", "data", "name", "TILER_SYSTEM_SPACE", "len", 0x20000000L, "access", "RWX")}), Global.newArray(new Object[]{"SHARED_CTRL", Global.newObject("base", 0x80000000L, "space", "data", "name", "SHARED_CTRL", "len", 0x01000000L, "access", "RWX")}), Global.newArray(new Object[]{"CODE_CORE_HOST", Global.newObject("base", 0x81000000L, "space", "code", "name", "CODE_CORE_HOST", "len", 0x00100000L, "access", "RWX")}), Global.newArray(new Object[]{"PRIVATE_DATA_CORE_HOST", Global.newObject("base", 0x81100000L, "space", "data", "name", "PRIVATE_DATA_CORE_HOST", "len", 0x01400000L, "access", "RWX")}), Global.newArray(new Object[]{"CODE_CORE_VIDEO_M3", Global.newObject("base", 0x82500000L, "space", "code", "name", "CODE_CORE_VIDEO_M3", "len", 0x00100000L, "access", "RWX")}), Global.newArray(new Object[]{"PRIVATE_DATA_CORE_VIDEO_M3", Global.newObject("base", 0x82600000L, "space", "data", "name", "PRIVATE_DATA_CORE_VIDEO_M3", "len", 0x01400000L, "access", "RWX")}), Global.newArray(new Object[]{"CODE_CORE_VPSS_M3", Global.newObject("base", 0x83A00000L, "space", "code", "name", "CODE_CORE_VPSS_M3", "len", 0x00200000L, "access", "RWX")}), Global.newArray(new Object[]{"PRIVATE_DATA_CORE_VPSS_M3", Global.newObject("base", 0x83C00000L, "space", "data", "name", "PRIVATE_DATA_CORE_VPSS_M3", "len", 0x02000000L, "access", "RWX")}), Global.newArray(new Object[]{"CODE_CORE_DSP", Global.newObject("base", 0x85C00000L, "space", "code", "name", "CODE_CORE_DSP", "len", 0x01000000L, "access", "RWX")}), Global.newArray(new Object[]{"PRIVATE_DATA_CORE_DSP", Global.newObject("base", 0x86C00000L, "space", "data", "name", "PRIVATE_DATA_CORE_DSP", "len", 0x01000000L, "access", "RWX")}), Global.newArray(new Object[]{"HDVPSS_DESCRIPTOR_NON_CACHED", Global.newObject("base", 0x87C00000L, "space", "data", "name", "HDVPSS_DESCRIPTOR_NON_CACHED", "len", 0x00200000L, "access", "RWX")}), Global.newArray(new Object[]{"HDVPSS_SHARED_MEM", Global.newObject("base", 0x87E00000L, "space", "data", "name", "HDVPSS_SHARED_MEM", "len", 0x00300000L, "access", "RWX")}), Global.newArray(new Object[]{"SHARED_MEM", Global.newObject("base", 0x88100000L, "space", "data", "name", "SHARED_MEM", "len", 0x02000000L, "access", "RWX")}), Global.newArray(new Object[]{"SHARED_FRAME_BUFFER", Global.newObject("base", 0x8A100000L, "space", "data", "name", "SHARED_FRAME_BUFFER", "len", 0x05E00000L, "access", "RWX")}), Global.newArray(new Object[]{"SHARED_LOG_MEM", Global.newObject("base", 0x8FF00000L, "space", "data", "name", "SHARED_LOG_MEM", "len", 0x00090000L, "access", "RWX")}), Global.newArray(new Object[]{"DSP_BOP_EMEM", Global.newObject("base", 0x900A0000L, "space", "data", "name", "DSP_BOP_EMEM", "len", 0x00F60000L, "access", "RWX")}), Global.newArray(new Object[]{"CONFIG_REGISTER_SPACE_1", Global.newObject("base", 0x59020500L, "space", "data", "name", "CONFIG_REGISTER_SPACE_1", "len", 0x06FDFB00L, "access", "RWX")})}))));
        Global.callFxn("init", pkgV);
        ((Value.Obj)om.getv("evmCentaurus.host.Platform")).bless();
        ((Value.Arr)om.findStrict("$packages", "evmCentaurus.host")).add(pkgV);
    }

    public void exec( Scriptable xdcO, Session ses )
    {
        this.xdcO = xdcO;
        this.ses = ses;
        om = (Value.Obj)xdcO.get("om", null);

        Object o = om.geto("$name");
        String s = o instanceof String ? (String)o : null;
        isCFG = s != null && s.equals("cfg");
        isROV = s != null && s.equals("rov");

        $$IMPORTS();
        $$OBJECTS();
        Platform$$OBJECTS();
        Platform$$CONSTS();
        Platform$$CREATES();
        Platform$$FUNCTIONS();
        Platform$$SIZES();
        Platform$$TYPES();
        if (isROV) {
            Platform$$ROV();
        }//isROV
        $$SINGLETONS();
        Platform$$SINGLETONS();
        $$INITIALIZATION();
    }
}
