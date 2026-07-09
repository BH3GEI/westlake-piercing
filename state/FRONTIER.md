<!-- 当前前沿 · ≤30 行 · 只写"此刻在打哪道墙/最新证据/下一步" -->
<!-- 每个班次结束由 thinker 更新。历史前沿不留这里,进 DECISIONS.md。 -->

# 当前前沿 (FRONTIER)

**更新**：2026-07-09 落盘班次 · thinker=fable(Cursor)

## 代码前沿 = 墙 #43 AppCompat 双包 parent-chain 主题墙

- **owner 域**：resource/L6(原 Agent-B)
- **机理**：uptodown 是 AppCompatActivity，setContentView 走 createSubDecor，要 Theme.AppCompat 的 windowActionBar。app 主题 AppThemeBar(0x7f15000e) 的 parent chain 跨包走到 framework `@android:Theme.Material.Light.NoActionBar`(0x01)，但 uamShared 只挂了 app arsc(0x7f)、没挂 framework-res(0x01) → 链断、`uamHasWab=false`。
- **已知修法**：给 uamShared **也** addAssetPath(76a92b8f)，让同一个 am 有 0x7f+0x01。**关键顺序坑**：addAssetPath+BuildDynamicRefTable 必须在 newTheme/applyStyle 之前，否则 bag 已冻结锁死断链(E 钉,COORD L2904)。
- **最后板上状态**：正在测，未出结论。

## 阻塞态

- 板子 2026-07-09 15:42 已恢复(5583f5be/两块小板在线，5ce2dcee 仍离线)。**#43 现在可上板验证。**
- ⚠️ 但恢复后尚未有人真正重跑 #43 —— 中间发生了"停工重构"(本次落盘)。

## 下一步(严格依赖序，#43 解开后)

1. #50 createSubDecor windowActionBar 解析出 → subDecor 产出
2. #51 setContentView(app R.layout.main) → content FrameLayout 0x1020002 —— *app 布局首次 inflate*
3. #53 show() 真 DecorView 首帧 → 面板像素 r==2(须先补 #44 finishRecording Path-B wrapper)
   并行输入支线：#49 接 WestlakeGenericJni@:2262 → #52 tap→WLTEST CLICK(D) → #47 IME

## 悬在头上的事实债

复核 42 个 claimed PASS(尤其 #4 与 boot-image clinit 的矛盾)——见 QUEUE.md 工厂队列。**前沿推进与事实复核可并行**：#43 吃 5583f5be，复核卡多为 host / 可摊到另一块板。
