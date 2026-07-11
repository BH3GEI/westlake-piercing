# color 路径 native 绑定审计 —— W-003 对上屏是否充分

日期: 2026-07-12
给出者: 主号(thinker),19-agent workflow(wf_1ef43d94-d0e) + 对抗性复核
方法: 逐个核对 ColorView.onDraw→drawColor 渲染路径上每个 native 的 shorty 是否在
      `interpreter.cc` 有派发 arm;ground-truth = android-15 decoded smali + 直接读 interpreter.cc。
关联: tasks/todo/W-003.md、state/HANDOFF-2026-07-11-color-apk-onscreen.md、
      evidence/W-001/2026-07-12-r2-libhwui-singleton-art-path.txt(R2 门)

================================================================
## 中文摘要 + 我的解读(含对抗复核更正)
================================================================
**裁决:YES-WITH-CAVEATS —— W-003 在 ART/解释器层对 color 路径充分,不需再改 interpreter.cc。**

- color 路径实际只有 **6 个解释器派发的 Java native**,全部有匹配 shorty arm:
  nCreate(JL@1011,normal,不依赖 W-003)、nSetLeftTopRightBottom(ZJIIII@793)、
  nCreateDisplayListCanvas(JJII@873)、nResetDisplayListCanvas(VJJII@877)、
  nFinishRecording(VJJ@868,raw-ABI critical arm,区别于 @806 的 normal-ABI VJJ)、
  nDrawColor(VJII)。
- **对抗复核更正一个事实错误(重要)**:`nDrawColor(JII)V` 实为 **@FastNative**
  (BaseRecordingCanvas.smali:53-55),不是 @CriticalNative。⇒ 它走 normal 路 arm **@1954**
  (正确 ABI: void(JNIEnv*,jclass,jlong,jint,jint)),在 **RegisterNatives 时就绑,不依赖 W-003**。
  所以真正靠 W-003 "发布" 的是 **4 个** @CriticalNative(上面第 2-5 个),每个都有 critical arm。
- **不要为 color 加任何 arm**。两个 workflow 报的 "gap" 都是**误报**:
  `westlake_android_runtime_startReg`(GAP_NOT_REGISTERED)和
  `register_android_view_DisplayListCanvas`(GAP_NO_ARM)都是 sidecar dlsym 直调的 **C 注册函数**,
  根本不走解释器派发,没 arm 是正常的。
- **View.draw 最小路径复核 CONFIRMED**:裸 View(mBackground null / 无 scrollbar / 无 foreground /
  无 fading edge / null AttachInfo)只发出**一个绘制 native = nDrawColor**;drawBackground/dispatchDraw/
  onDrawForeground/drawDefaultFocusHighlight 全部短路,无 save/restore/clip/quickReject。
  额外覆盖 nGetNativeFinalizer(J,arm @997)。

**残余真实风险(都在 W-003 代码范围外,registration 层 —— 要和 W-003 同一板期一枪 bundle):**
1. **libhwui.so 硬门**:sidecar 的 `register_hwui_if_present` 若 dlopen 不到 libhwui,就 log
   "libhwui.so not present yet; graphics native registration deferred" 并**零绑定** graphics native →
   所有渲染 native 都不绑,与 W-003 无关。libhwui 必须是本项目 `libhwui-adapter.so`(改名覆盖 substrate 的)
   才能给出 ABI 兼容的 RenderNode 指针 —— **这正是 R2 门**(见 r2-libhwui-singleton 那份)。
2. **截断 env 门(新发现)**:`WESTLAKE_HWUI_STOP_AT<=51` 会注册 Canvas(idx 0) 但**丢掉 RenderNode(idx 50)
   与 DisplayListCanvas(idx 51)**(都在注册表尾),导致 nCreate/nSetLeftTopRightBottom/nCreateDisplayListCanvas/
   nResetDisplayListCanvas/nFinishRecording/nDrawColor **全不绑**。`WESTLAKE_HWUI_SKIP` 命中 0/50/51 同理。
   默认(stopAt=1000、无 skip)三个都跑。**color run 必须确认这两个 env 没设成截断值。**
3. nDrawColor ABI 一致性:已被对抗复核消除 —— 确定 @FastNative → 走 @1954,无歧义。
4. ColorView 形状假设:没独立读 ColorView smali;契约(纯 View、onDraw-only、drawColor(int)、
   null background/foreground/scrollbar/AttachInfo)成立时只有一个 paint native。契约若破会引入别的 native。

**可执行动作(config/verification,非 interpreter 代码):**
- 不加任何 shorty arm(6 个 native 已全有 arm;尤其别给 nDrawColor 在 normal 块加 VJII —— @1954 已在)。
- color-apk stage 前把 libhwui-adapter 部到 `register_hwui_if_present` 探测路径
  (如 `…/substrate/android/lib64/libhwui.so` = 改名的 libhwui-adapter.so)。
- color run 固定 env:`WESTLAKE_HWUI_STOP_AT` 不设或 >51;`WESTLAKE_HWUI_SKIP` 不含 0/50/51。
- g_hwui_reg_all 循环后加 boot 断言/log:确认 idx 0、50、51 注册成功 → 把"截断/失败注册"从
  "上屏黑屏活体发现"变成 boot 期报错。
- (可选)确认 framework.jar 声明 `BaseRecordingCanvas.nDrawColor` 的注解,避免 ABI mismatch。

**净结论**:W-003 按其 scope(发布 pending @CriticalNative 指针)在 ART/解释器层**足以**让 color 路径
绑定并派发;把 libhwui staging + env-gate pinning + 注册成功断言一起 bundle,color 上屏就是 W-003 后的**一枪**,
而非串行活体发现。**上屏 = W-003(#49) ∧ R2(一份 libhwui) ∧ 回读接线 ∧ (env 门不截断)。**

================================================================
## workflow 完整报告原文(证据原件,英文)
================================================================
(19 agents, 0 error, 795607 subagent tokens; 完整 per-agent 结果见
 subagents/workflows/wf_1ef43d94-d0e/journal.jsonl)

### Synthesis verdict
YES-WITH-CAVEATS. After W-003 lands, all six interpreter-dispatched natives on the
ColorView.onDraw -> drawColor render path both bind and have a matching shorty arm in
interpreter.cc, so drawColor executes and the panel color changes.

Master table (interpreter-dispatched Java natives):
| native | shorty | annotation | needs-W-003 | arm | verdict |
| RenderNode.nCreate(String)J | JL | Normal | no | @1011 | ALREADY_BINDS |
| RenderNode.nSetLeftTopRightBottom(JIIII)Z | ZJIIII | @CriticalNative | yes | @793 | BINDS_AFTER_W003 |
| RecordingCanvas.nCreateDisplayListCanvas(JII)J | JJII | @CriticalNative | yes | @873 | BINDS_AFTER_W003 |
| RecordingCanvas.nResetDisplayListCanvas(JJII)V | VJJII | @CriticalNative | yes(2nd+ frame) | @877 | BINDS_AFTER_W003 |
| BaseRecordingCanvas.nDrawColor(JII)V | VJII | @FastNative(复核纠正) | no | @1954 | ALREADY_BINDS |
| RecordingCanvas.nFinishRecording(JJ)V | VJJ | @CriticalNative | yes | @868 | BINDS_AFTER_W003 |

### Adversarial verification — HOLDS
1. nDrawColor(JII)V is @FastNative, NOT @CriticalNative (BaseRecordingCanvas.smali:53-55).
   IsCriticalNative() false → skips critical block (716) → regular_jni(920) → static sub-block(947)
   → VJII arm @1954 with correct void(JNIEnv*,jclass,jlong,jint,jint) ABI ("stay in kRunnable for
   FastNative compat" @996/1002). Critical arm @855 never reached for this method. nDrawColor binds
   at RegisterNatives, W-003-independent. Residual-risk #3 (ABI @855 vs @1954) is moot.
2. Other five natives: annotations/arms CONFIRMED. nCreateDisplayListCanvas/nResetDisplayListCanvas/
   nFinishRecording @CriticalNative (RecordingCanvas.smali:100-101,140-141,151-152) → JJII@873,
   VJJII@877, VJJ@868 (distinct from RenderNode NORMAL-ABI VJJ@806). nSetLeftTopRightBottom
   @CriticalNative (RenderNode.smali:453-454) → ZJIIII@793 (RenderNode sub-block, jni_entry fallback
   @740). nCreate no annotation (RenderNode.smali:146-147) → JL@1011.
3. View.draw minimal path CONFIRMED, exactly one paint native. View.draw(Canvas) @View.smali:27719,
   fading edges off (viewFlags 0x1000/0x2000 == 0, 27748-27782) → simple branch, no save/restore/clip.
   drawBackground returns @10871 (mBackground null); dispatchDraw empty @25761; drawAutofilledHighlight
   returns @10855; onDrawForeground→onDrawScrollIndicators returns @15360/15380, onDrawScrollBars returns
   @47160, foreground null; drawDefaultFocusHighlight returns @10983; isShowingLayoutBounds 0 @43500
   (null AttachInfo) → debugDrawFocus skipped. Only onDraw→drawColor paints.
4. drawColor overload CONFIRMED nDrawColor(JII)V. canvas.drawColor(int) → BaseRecordingCanvas.drawColor(I)V
   @BaseRecordingCanvas.smali:1045 → nDrawColor(JII)V @1060 (VJII), not the (JJJI) long-color overload.
5. Class-init native covered. RenderNode ctor runs nGetNativeFinalizer()J (RenderNode.smali:38/228,
   normal, shorty J) → static-block arm @997. Not a hidden blocker.
Conclusion: No native on the color path fails after W-003. HOLDS.
