# W-005 · 2026-07-18 · record() 死点精确定位：beginRecording 原生分派 SIGBUS（ArtMethod access=0x7f）

**承接**: 2026-07-17/18 两份（管线全通至 record()、ART 选型实验）。

## 实测（5583，pid 多轮复现，stderr→WLERR 捕获后首次「看见」）

组合：art `adeb764f` · libhwui-a14compat `bb233058` · framework A15 `c3a06db5` · probe `e7a118f6`
（selective binder）· dex direct-call 版（`498c9e61`）。

流程实录（tri-ladder + WLTRI + artboot-stderr.log）：
```
01 tv-loaded → 02 record-begin → clinit ok → r0 enter → r1 nCreate → [SIGBUS]
ziparchive: classes2.dex not found（triangle.apk 单 dex，正常）
InterpreterJni: unhandled static shorty 'ZL'（DexFile.isBackedByOatFile，容错）
WLXMLIJ3 nSetLeftTopRightBottom realfn=0（@CriticalNative 未绑，dex try/catch 容错）
[OHBridge] SIGBUS caught! fault_addr=0xcfe8c5b0d025c4a3
  pc=0x7f08da4ca0 lr=0x7f08da4c04 x16=0x7f094e58e0
  ArtMethod@0x7f094e58e0: access=0x7f dex_idx=127 data=0x7f08e8e92c entry=0x7f08e8d360
```

## 判读

- 死点 = `RenderNode.beginRecording(w,h)` → `RecordingCanvas.obtain` → `nCreateDisplayListCanvas`
  的原生分派现场（该 native 已由 selective binder 注册成功——bound=355 skipped=0）。
- 崩溃 ArtMethod `access=0x7f`（public|private|protected|static|final|synchronized|bridge 全置位，
  不可能组合）= **VM 读到了越界/写坏的 ArtMethod 条目**；dex_idx=127 同样可疑。
  两次复现 pc 不同（ASLR），同一签名。
- 与 claude 证据（record.invoke 反射死点破→直调推进至 beginRecording）一致并把它钉死：
  不是注册缺口、不是 dex 流程错，是 **adeb764f 的 ArtMethod 解析/写出腐坏**（VM 抽签实锤）。
- 旁证：`record` 前两步（clinit/r0/r1 nCreate）在 direct-call 变体下全过；旧反射版（Method.invoke）
  连 r0 都到不了（反射分派直接 SIGKILL——**反射进 boot dex 亦有 bug，已以直调绕行**）。

## 结论（不变，但更确定）

**唯一出路 = 编译机重出 westlake ART**（relink 构建在 LineageOS-22.2 树 + westlake 补丁移植，
子代理迭代中）。落地后 `artboot/redeploy-art.sh` 换件 → `apkhost-fresh-frame.sh`（已含
解锁/保活/bm clean 防陈旧）。

## 工具沉淀

- 胶 `artboot.c`：native fd2 → `files/artboot-stderr.log` → 镜像线程 WLERR 上 hilog——
  ART abort()/SIGBUS 从此可见（本记录即由它产出）。已入伞仓 `a385c1c`。
- `oracle/verify/apkhost-fresh-frame.sh`：+ 解锁/15s 保活环（LIFECYCLE_TIMEOUT 防御）+
  `bm clean -d`（陈旧 substrate 防御）。已入 `6abb8bb4`。
