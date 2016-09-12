/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-y36
 */
import java.util.*;
import org.mozilla.javascript.*;
import xdc.services.intern.xsr.*;
import xdc.services.spec.Session;

public class evmC6A8149_eve
{
    static final String VERS = "@(#) xdc-y36\n";

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
        pkgP = (Proto.Obj)om.bind("evmC6A8149.eve.Package", new Proto.Obj());
        pkgV = (Value.Obj)om.bind("evmC6A8149.eve", new Value.Obj("evmC6A8149.eve", pkgP));
    }

    void Platform$$OBJECTS()
    {
        Proto.Obj po, spo;
        Value.Obj vo;

        po = (Proto.Obj)om.bind("evmC6A8149.eve.Platform.Module", new Proto.Obj());
        vo = (Value.Obj)om.bind("evmC6A8149.eve.Platform", new Value.Obj("evmC6A8149.eve.Platform", po));
        pkgV.bind("Platform", vo);
        // decls 
        om.bind("evmC6A8149.eve.Platform.Board", om.findStrict("xdc.platform.IPlatform.Board", "evmC6A8149.eve"));
        om.bind("evmC6A8149.eve.Platform.Memory", om.findStrict("xdc.platform.IPlatform.Memory", "evmC6A8149.eve"));
        // insts 
        Object insP = om.bind("evmC6A8149.eve.Platform.Instance", new Proto.Obj());
        po = (Proto.Obj)om.bind("evmC6A8149.eve.Platform$$Object", new Proto.Obj());
        Object objP = om.bind("evmC6A8149.eve.Platform.Object", new Proto.Str(po, true));
        po = (Proto.Obj)om.bind("evmC6A8149.eve.Platform$$Params", new Proto.Obj());
        om.bind("evmC6A8149.eve.Platform.Params", new Proto.Str(po, true));
    }

    void Platform$$CONSTS()
    {
        // module Platform
    }

    void Platform$$CREATES()
    {
        Proto.Fxn fxn;
        StringBuilder sb;

        fxn = (Proto.Fxn)om.bind("evmC6A8149.eve.Platform$$create", new Proto.Fxn(om.findStrict("evmC6A8149.eve.Platform.Module", "evmC6A8149.eve"), om.findStrict("evmC6A8149.eve.Platform.Instance", "evmC6A8149.eve"), 3, 2, false));
                fxn.addArg(0, "name", $$T_Str, $$UNDEF);
                fxn.addArg(1, "args", $$T_Obj, $$UNDEF);
                fxn.addArg(2, "__params", (Proto)om.findStrict("evmC6A8149.eve.Platform.Params", "evmC6A8149.eve"), Global.newObject());
        sb = new StringBuilder();
        sb.append("evmC6A8149$eve$Platform$$create = function( name, args, __params ) {\n");
            sb.append("var __mod = xdc.om['evmC6A8149.eve.Platform'];\n");
            sb.append("var __inst = xdc.om['evmC6A8149.eve.Platform.Instance'].$$make();\n");
            sb.append("__inst.$$bind('$package', xdc.om['evmC6A8149.eve']);\n");
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
        fxn = (Proto.Fxn)om.bind("evmC6A8149.eve.Platform$$construct", new Proto.Fxn(om.findStrict("evmC6A8149.eve.Platform.Module", "evmC6A8149.eve"), null, 4, 2, false));
                fxn.addArg(0, "__obj", (Proto)om.findStrict("evmC6A8149.eve.Platform$$Object", "evmC6A8149.eve"), null);
                fxn.addArg(1, "name", $$T_Str, $$UNDEF);
                fxn.addArg(2, "args", $$T_Obj, $$UNDEF);
                fxn.addArg(3, "__params", (Proto)om.findStrict("evmC6A8149.eve.Platform.Params", "evmC6A8149.eve"), Global.newObject());
        sb = new StringBuilder();
        sb.append("evmC6A8149$eve$Platform$$construct = function( __obj, name, args, __params ) {\n");
            sb.append("var __mod = xdc.om['evmC6A8149.eve.Platform'];\n");
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

        cap = (Scriptable)Global.callFxn("loadCapsule", xdcO, "evmC6A8149/eve/Platform.xs");
        om.bind("evmC6A8149.eve.Platform$$capsule", cap);
        po = (Proto.Obj)om.findStrict("evmC6A8149.eve.Platform.Module", "evmC6A8149.eve");
        po.init("evmC6A8149.eve.Platform.Module", om.findStrict("xdc.platform.IPlatform.Module", "evmC6A8149.eve"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("CPU", (Proto)om.findStrict("ti.platforms.generic.Platform.Instance", "evmC6A8149.eve"), $$UNDEF, "wh");
                po.addFxn("create", (Proto.Fxn)om.findStrict("evmC6A8149.eve.Platform$$create", "evmC6A8149.eve"), Global.get("evmC6A8149$eve$Platform$$create"));
                po.addFxn("construct", (Proto.Fxn)om.findStrict("evmC6A8149.eve.Platform$$construct", "evmC6A8149.eve"), Global.get("evmC6A8149$eve$Platform$$construct"));
        fxn = Global.get(cap, "module$use");
        if (fxn != null) om.bind("evmC6A8149.eve.Platform$$module$use", true);
        if (fxn != null) po.addFxn("module$use", $$T_Met, fxn);
        fxn = Global.get(cap, "module$meta$init");
        if (fxn != null) om.bind("evmC6A8149.eve.Platform$$module$meta$init", true);
        if (fxn != null) po.addFxn("module$meta$init", $$T_Met, fxn);
        fxn = Global.get(cap, "instance$meta$init");
        if (fxn != null) om.bind("evmC6A8149.eve.Platform$$instance$meta$init", true);
        if (fxn != null) po.addFxn("instance$meta$init", $$T_Met, fxn);
        fxn = Global.get(cap, "module$validate");
        if (fxn != null) om.bind("evmC6A8149.eve.Platform$$module$validate", true);
        if (fxn != null) po.addFxn("module$validate", $$T_Met, fxn);
        po = (Proto.Obj)om.findStrict("evmC6A8149.eve.Platform.Instance", "evmC6A8149.eve");
        po.init("evmC6A8149.eve.Platform.Instance", om.findStrict("xdc.platform.IPlatform.Instance", "evmC6A8149.eve"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("codeMemory", $$T_Str, "DDR_CODE", "wh");
        po.addFld("dataMemory", $$T_Str, "DDR_DATA", "wh");
        po.addFld("stackMemory", $$T_Str, "DDR_DATA", "wh");
                fxn = Global.get(cap, "getCpuDataSheet");
                if (fxn != null) po.addFxn("getCpuDataSheet", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCpuDataSheet", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getCreateArgs");
                if (fxn != null) po.addFxn("getCreateArgs", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCreateArgs", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getExeContext");
                if (fxn != null) po.addFxn("getExeContext", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExeContext", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getExecCmd");
                if (fxn != null) po.addFxn("getExecCmd", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExecCmd", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getLinkTemplate");
                if (fxn != null) po.addFxn("getLinkTemplate", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getLinkTemplate", "evmC6A8149.eve"), fxn);
        po = (Proto.Obj)om.findStrict("evmC6A8149.eve.Platform$$Params", "evmC6A8149.eve");
        po.init("evmC6A8149.eve.Platform.Params", om.findStrict("xdc.platform.IPlatform$$Params", "evmC6A8149.eve"));
                po.addFld("$hostonly", $$T_Num, 1, "r");
        po.addFld("codeMemory", $$T_Str, "DDR_CODE", "wh");
        po.addFld("dataMemory", $$T_Str, "DDR_DATA", "wh");
        po.addFld("stackMemory", $$T_Str, "DDR_DATA", "wh");
        po = (Proto.Obj)om.findStrict("evmC6A8149.eve.Platform$$Object", "evmC6A8149.eve");
        po.init("evmC6A8149.eve.Platform.Object", om.findStrict("evmC6A8149.eve.Platform.Instance", "evmC6A8149.eve"));
                fxn = Global.get(cap, "getCpuDataSheet");
                if (fxn != null) po.addFxn("getCpuDataSheet", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCpuDataSheet", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getCreateArgs");
                if (fxn != null) po.addFxn("getCreateArgs", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getCreateArgs", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getExeContext");
                if (fxn != null) po.addFxn("getExeContext", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExeContext", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getExecCmd");
                if (fxn != null) po.addFxn("getExecCmd", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getExecCmd", "evmC6A8149.eve"), fxn);
                fxn = Global.get(cap, "getLinkTemplate");
                if (fxn != null) po.addFxn("getLinkTemplate", (Proto.Fxn)om.findStrict("xdc.platform.IPlatform$$getLinkTemplate", "evmC6A8149.eve"), fxn);
    }

    void Platform$$ROV()
    {
    }

    void $$SINGLETONS()
    {
        pkgP.init("evmC6A8149.eve.Package", (Proto.Obj)om.findStrict("xdc.IPackage.Module", "evmC6A8149.eve"));
        pkgP.bind("$capsule", $$UNDEF);
        pkgV.init2(pkgP, "evmC6A8149.eve", Value.DEFAULT, false);
        pkgV.bind("$name", "evmC6A8149.eve");
        pkgV.bind("$category", "Package");
        pkgV.bind("$$qn", "evmC6A8149.eve.");
        pkgV.bind("$vers", Global.newArray());
        Value.Map atmap = (Value.Map)pkgV.getv("$attr");
        atmap.seal("length");
        imports.clear();
        pkgV.bind("$imports", imports);
        StringBuilder sb = new StringBuilder();
        sb.append("var pkg = xdc.om['evmC6A8149.eve'];\n");
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

        vo = (Value.Obj)om.findStrict("evmC6A8149.eve.Platform", "evmC6A8149.eve");
        po = (Proto.Obj)om.findStrict("evmC6A8149.eve.Platform.Module", "evmC6A8149.eve");
        vo.init2(po, "evmC6A8149.eve.Platform", $$DEFAULT, false);
        vo.bind("Module", po);
        vo.bind("$category", "Module");
        vo.bind("$capsule", om.findStrict("evmC6A8149.eve.Platform$$capsule", "evmC6A8149.eve"));
        vo.bind("Instance", om.findStrict("evmC6A8149.eve.Platform.Instance", "evmC6A8149.eve"));
        vo.bind("Params", om.findStrict("evmC6A8149.eve.Platform.Params", "evmC6A8149.eve"));
        vo.bind("PARAMS", ((Proto.Str)om.findStrict("evmC6A8149.eve.Platform.Params", "evmC6A8149.eve")).newInstance());
        vo.bind("$package", om.findStrict("evmC6A8149.eve", "evmC6A8149.eve"));
        tdefs.clear();
        proxies.clear();
        mcfgs.clear();
        icfgs.clear();
        inherits.clear();
        vo.bind("Board", om.findStrict("xdc.platform.IPlatform.Board", "evmC6A8149.eve"));
        tdefs.add(om.findStrict("xdc.platform.IPlatform.Board", "evmC6A8149.eve"));
        vo.bind("Memory", om.findStrict("xdc.platform.IPlatform.Memory", "evmC6A8149.eve"));
        tdefs.add(om.findStrict("xdc.platform.IPlatform.Memory", "evmC6A8149.eve"));
        vo.bind("MemoryMap", om.findStrict("xdc.platform.IPlatform.MemoryMap", "evmC6A8149.eve"));
        vo.bind("$$tdefs", Global.newArray(tdefs.toArray()));
        vo.bind("$$proxies", Global.newArray(proxies.toArray()));
        vo.bind("$$mcfgs", Global.newArray(mcfgs.toArray()));
        vo.bind("$$icfgs", Global.newArray(icfgs.toArray()));
        inherits.add("xdc.platform");
        vo.bind("$$inherits", Global.newArray(inherits.toArray()));
        ((Value.Arr)pkgV.getv("$modules")).add(vo);
        ((Value.Arr)om.findStrict("$modules", "evmC6A8149.eve")).add(vo);
        vo.bind("$$instflag", 1);
        vo.bind("$$iobjflag", 1);
        vo.bind("$$sizeflag", 1);
        vo.bind("$$dlgflag", 0);
        vo.bind("$$iflag", 1);
        vo.bind("$$romcfgs", "|");
        vo.bind("$$nortsflag", 0);
        Proto.Str ps = (Proto.Str)vo.find("Module_State");
        if (ps != null) vo.bind("$object", ps.newInstance());
        vo.bind("$$meta_iobj", om.has("evmC6A8149.eve.Platform$$instance$static$init", null) ? 1 : 0);
        vo.bind("$$fxntab", Global.newArray());
        vo.bind("$$logEvtCfgs", Global.newArray());
        vo.bind("$$errorDescCfgs", Global.newArray());
        vo.bind("$$assertDescCfgs", Global.newArray());
        Value.Map atmap = (Value.Map)vo.getv("$attr");
        atmap.seal("length");
        vo.bind("Object", om.findStrict("evmC6A8149.eve.Platform.Object", "evmC6A8149.eve"));
        pkgV.bind("Platform", vo);
        ((Value.Arr)pkgV.getv("$unitNames")).add("Platform");
    }

    void $$INITIALIZATION()
    {
        Value.Obj vo;

        if (isCFG) {
        }//isCFG
        Global.callFxn("module$meta$init", (Scriptable)om.findStrict("evmC6A8149.eve.Platform", "evmC6A8149.eve"));
        vo = (Value.Obj)om.findStrict("evmC6A8149.eve.Platform", "evmC6A8149.eve");
        Global.put(vo, "CPU", Global.callFxn("create", (Scriptable)om.find("ti.platforms.generic.Platform"), "CPU", Global.newObject("clockRate", 400.0, "catalogName", "ti.catalog.arp32", "deviceName", "TMS320C6A8149", "revision", "", "customMemoryMap", Global.newArray(new Object[]{Global.newArray(new Object[]{"VECMEM", Global.newObject("comment", "Vector memory", "name", "VECMEM", "base", 0x90000000L, "len", 0x00000100L, "space", "data", "page", 0L, "access", "RWX")}), Global.newArray(new Object[]{"CMDMEM", Global.newObject("comment", "Command memory", "name", "CMDMEM", "base", 0x90000100L, "len", 0x00000e00L, "space", "code", "page", 0L, "access", "RWX")}), Global.newArray(new Object[]{"DDR_CODE", Global.newObject("comment", "DDR Code", "name", "DDR_CODE", "base", 0x90001000L, "len", 0x00080000L, "space", "code", "page", 0L, "access", "RWX")}), Global.newArray(new Object[]{"DATMEM", Global.newObject("comment", "32KB data memory", "name", "DATMEM", "base", 0x40020200L, "len", 0x00005E00L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"RES_SET_LOC", Global.newObject("comment", "32KB data memory", "name", "RES_SET_LOC", "base", 0x40026000L, "len", 0x00000200L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"STACKS", Global.newObject("comment", "32KB data memory", "name", "STACKS", "base", 0x40027000L, "len", 0x00001000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"IMEMLA", Global.newObject("comment", "Image buffer low copy A", "name", "IMEMLA", "base", 0x40050000L, "len", 0x4000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"IMEMHA", Global.newObject("comment", "Image buffer high copy A", "name", "IMEMHA", "base", 0x40054000L, "len", 0x4000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"IMEMLB", Global.newObject("comment", "Image buffer low copy B", "name", "IMEMLB", "base", 0x40070000L, "len", 0x4000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"IMEMHB", Global.newObject("comment", "Image buffer high copy B", "name", "IMEMHB", "base", 0x40074000L, "len", 0x4000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"PARM", Global.newObject("comment", "VCOP work buffer", "name", "PARM", "base", 0x40040000L, "len", 0x00000400L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"WMEM", Global.newObject("comment", "VCOP work buffer", "name", "WMEM", "base", 0x40040400L, "len", 0x00007C00L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"OCMCRAM", Global.newObject("comment", "128KB L3 OCMC Memory", "name", "OCMCRAM", "base", 0x40300000L, "len", 0x00020000L, "space", "code/data", "page", 1L, "access", "RWX")}), Global.newArray(new Object[]{"GEM1L2", Global.newObject("comment", "DSP L2", "name", "GEM1L2", "base", 0x40810000L, "len", 0x00010000L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"SYNC_AREA", Global.newObject("comment", "Sync Area", "name", "SYNC_AREA", "base", 0x4037fe00L, "len", 0x00000200L, "space", "data", "page", 1L, "access", "RW")}), Global.newArray(new Object[]{"DDR_DATA", Global.newObject("comment", "DDR Data", "name", "DDR_DATA", "base", 0x90090000L, "len", 0x00100000L, "space", "data", "page", 1L, "access", "RWX")}), Global.newArray(new Object[]{"SHARED_CTRL", Global.newObject("comment", "Shared Region 0 for IPC", "name", "SHARED_CTRL", "base", 0x80000000L, "len", 0x01000000L, "space", "code/data", "page", 1L, "access", "RWX")})}))));
        Global.callFxn("init", pkgV);
        ((Value.Obj)om.getv("evmC6A8149.eve.Platform")).bless();
        ((Value.Arr)om.findStrict("$packages", "evmC6A8149.eve")).add(pkgV);
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