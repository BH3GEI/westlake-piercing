---
name: agent-e-readonly-parsestate-analysis
description: "我是 Agent-E(只读分析线):复盘 B 的 XmlBlock parse-state hang,结论=硬编码 shorty 分支盲信 jni_entry(generic trampoline 污染)的 bug 家族;分析已追加白板"
metadata: 
  node_type: memory
  type: project
  originSessionId: 11bc684c-dfa2-40df-965d-41b7f478a4a4
---

**我是 Agent-E**(WestLake DAYU600 项目只读分析 agent,任务书 `/Users/yao/Desktop/AGENT-E-TASK.md`)。硬约束:只读,绝不 Edit/Write runtime 源码、绝不碰任何板子(5583f5be/5ce2dcee/dd011a41)、只能追加 `AGENT-COORD.md` 末尾(署名 Agent-E)或写自己 scratchpad。

2026-07-07 已完成首轮分析并追加白板(`## 🔍 [Agent-E]` 段):
- **根因**:`nativeCreateParseState`(crit=0)走 interpreter.cc regular "JJI" 分支,`fn=jni_entry`=generic-JNI trampoline 而非真 libandroidfw 函数 → 建出坏 parse state → nativeNext 在 `ResXMLParser::nextNode()` size=0 上死循环(hang 而非 crash)。**不是**秘书猜的多 long marshalling(同 run create-ret==cps-tree 已证 marshalling 正确;JJI 实为 1 long+1 int)。
- **B 在我分析同时已自己摸到 JJI 单点并加 FindCode 重解析**;我的增值=指出这是**家族病**:regular "JJIL"(AssetManager.nativeOpenXmlAsset,java_vm_ext.cc FindCode 特判只认 XmlBlock 类:1214/:1259)、VJ/IJI/JJ 裸 GetEntryPointFromJni、顶部 resolution "非 stub 即沿用" 不会重解析 trampoline。系统修法=①顶部 resolution 对 entry==trampoline 强制 FindCode ②java_vm_ext 特判放开类名限制(WlDlsymFrameworkNative interpreter.cc:112 已通用)。
- **观测陷阱**:反射 Field.getLong 走同一台 InterpJni(不可信);跨 cycle 地址 ASLR 不可比(建议全部日志加 getpid)。
- 有效性探针:合法 ResXMLTree T 满足 `*(void**)T==T`(自引用),合法 ps 满足 `*(void**)ps==tree`。
- B 的 session transcript:`~/.claude/projects/-Users-yao/b3d658ee-*.jsonl`(用 python 读尾部,别整读);ART 源码在 `/Users/yao/westlake-local-build/art-latest/patches/` + `aosp-art-15/`。

**第二轮(16:0x)翻案已上白板**:B 修通 parser 后 inflate 卡 "must supply layout_width"+空 theme,B 误诊为 framework-res 移交 A;我证实真因=`nativeApplyStyle`(shorty VJJIIJLJJ)和 `nativeThemeApplyStyle`(VJJIZ)**无 handler 被 else 分支静默 no-op**(match_parent 是字面量不需资源表;libandroidfw 无 AssetManager 符号但 entry 已被正确注册,非 trampoline)。系统修=接线 interpreter.cc:214 的 WestlakeGenericJni(定义了但 0 调用点)。全家族缺口:VJJIIJLJJ/VJJIZ/IJJILZ/VJJIIJLLL/ZJJIILLLL/ZJJLLL/VJJLLI。

**后续轮次要点**:③轮翻案 applyStyle-hang 归因(theme 指针来路,非 framework-res)→ B 的 WLTAS 实测坐实(theme.field0=0);④轮替 B 答 C/D:WestlakeGenericJni 0 调用点、**两个独立 no-op else**(crit :769 / normal :2262)要接两处、:751 已有 VJII crit handler(C eyeball 零接线);⑤轮修正:AssetManager natives 的提供者=**OHBridge 桩表**(部分能用部分垃圾,nativeThemeCreate 返垃圾 theme;"已注册所以 java_vm_ext 不覆盖"),建议 dladdr 全家族来路审计。A 的 framework-res 定版=76a92b8f(99%);121f478b/3cac774e/ffd402c0 都是 36-64% 旧版。

**⑥-⑨轮**:⑦轮我说"别补 ApkAssets/setApkAssets cascade(addAssetPath 证明能产 arsc)"——**⑨轮被 B 的 dladdr 推翻并认账**:那俩 native 是 libwestlake_art.so 内空桩,addAssetPath"通过"只是没崩(layout_width 不吃 arsc、resource-enum 桩返空也不崩),补 cascade 是对的。教训:间接行为推断 < 直接 dladdr 量测。⑧轮"layout_width≠framework arsc 加载(字面量)、迁板前 verify-gate getResourcePackageName(0x1030237)"被 dladdr 证实(任何 am 都无真 arsc)。给 B 的 arsc cascade 确切符号:`ApkAssets::Load`(std::string,flags)=0x1790a8 返 **sp<const ApkAssets>(非 unique_ptr,别用 theme 的 release 招,堆 sp 持计数)**;`AssetManager2::SetApkAssets(initializer_list)`=0x18dc48(内部自动 BuildDynamicRefTable 建 package_ids_[0x01],纠 A 的"手动索引");AM2 ctor=0x18cb84。同课第三遍=整条 native 对象链一实现造(parse-state/theme/arsc)。

**⑩轮(秘书点将,重大)**:B 要手写整套 arsc native(nativeLoad/nativeCreate/nativeSetApkAssets/getResourceValue/theme)——但**这些已编译在他正跑的 libandroidfw.so(md5 72a1d990)里**:该 .so 导出 JNI_OnLoad(0x2ae46c),`relink_libandroidfw.sh` 证明 `androidfw-build/jni.o`(=`westlake_assetmanager_jni.cpp` 36KB,7-06)已链入;JNI_OnLoad 的 RegisterNatives 表 kApkAssets[4]+kAssetManager[7]+Theme 覆盖全部,实现用 ApkAssetsPtr(sp,正确)。它们在 dladdr 里是桩,因为**B 是裸 dlopen(RTLD_NOW)加载 libandroidfw,裸 dlopen 不触发 JNI_OnLoad**(XmlBlock 通是走导出 Java_ 符号 dlsym;AssetManager 是 static+RegisterNatives 非导出所以没绑)。修法=dlsym JNI_OnLoad 调一次(vm),零胶水;板上 jni-onload.txt 在不在可判"没调 vs 被 OHBridge 盖"。helper 手写 theme wrapper 可退、统一走 jni.o。

我的巡检 cron:job 7f696147,每 17min 全员只读巡检(session 级,重启即失)。

相关:[[westlake-dayu600-two-fronts-converge]] [[agent-a-multiagent-coordination]] [[secretary-role-westlake-3agent]] [[westlake-agent-f-install-launcher]]
