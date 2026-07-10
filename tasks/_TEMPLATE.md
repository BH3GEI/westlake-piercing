<!-- 任务卡模板 · schema = 你们自己的 TECHNICAL_ATOM 标准 -->
<!-- 铸卡:复制本文件 → 填全 7 段 → 放 tasks/todo/<卡id>.md。缺 oracle 的卡不铸。 -->
<!-- 卡id 约定:R-NN=复核(re-verify) · F-NN=工厂(factory shim) · W-NN=穿刺(wall) -->

# <卡id> · <一句话标题>

- **全局原子号**：L{NN}.A{NN}（对不上写 `-`）
- **墙序**：LEDGER #NN（如关联）
- **队列**：frontier | factory
- **铸卡人 / 日期**：

## 0. 派工隔离 (dispatcher 领卡时填写)

```text
branch: worker/<卡id>
worktree: /Users/yao/Desktop/code/westlake-piercing.worktrees/<卡id>
```

<!-- 每个写入型 worker 必须独占 branch + worktree。只读顾问不填。禁止从 canonical checkout 直接启动 writer。 -->

## 1. 墙签名 (wall signature)
<!-- 精确症状:什么在什么条件下崩/不对。符号化,不要"跑不起来"这种模糊话。 -->

## 2. 封闭上下文 (self-contained context)
<!-- worker 所需的【全部】事实:文件路径、hash、板序列号、已知结论、相关源码片段位置。 -->
<!-- worker 不会去读 state/ 或历史。它读不到的,这里必须给全。 -->

## 3. Oracle 命令 (唯一成功判据)
<!-- 一条可跑的命令,输出 PASS/FAIL。没有 oracle 的卡不发弱模型。 -->
```bash
# 例:oracle/verify/atom-NN.sh <serial>   → 末行打印 PASS 或 FAIL
```

## 4. 板需求 (board)
<!-- none | small | big-any | big-clean。见 protocol/DISPATCH.md 匹配规则。 -->
board: none

## 5. 禁区 (forbidden)
<!-- 碰了直接 FAIL:文件/操作/不属于本卡的板。默认含 class_linker/vtable/interpreter.cc/entrypoint/runtime 替换/wipe/flash。 -->

## 6. 证据要求 (evidence)
<!-- PASS 必须留下什么:日志切片 / 截图 / 产物 hash / 板号。落 evidence/<卡id>/ 并在 evidence/INDEX.md 登记。 -->

## 7. 参照 oracle 路线 (可选)
<!-- 有没有一条"已跑通的路线"当"本该长什么样"的对照?(团结↔Unity;catalog/noice↔uptodown) -->
<!-- 指向 ammo/oracle-refs/ 或具体已通产物。没有则写"无"。 -->

---
<!-- worker 交付时在下面追加,不要改上面 -->
## RESULT
verdict:
oracle:
output:
board:
commit: self
