# W-001 evidence status

2026-07-10 交接审计在 5583 上重跑后定位到更早的 dispatcher 墙：static JNI shorty `ILL` 未处理，native append 根本没有被调用。随后独立 oracle audit 又确认旧 probe 把 `android:autoLink(0x010100b0)` 误作 AppCompat `windowActionBar(0x7f040691)`，且旧 native `ck` 没有成功更新 AssetManager2；所以旧“双包 parent-chain 断链”结论撤回为待证假说。

下一位 thinker 先运行：

```bash
oracle/verify/atom-43.sh 5583f5be00000000000000000323012c
```

旧完整日志 `/tmp/westlake-w001-20260710-121336.log` 为 4,679,678 bytes，sha256 `fa072043ad9f890481abf952f73edad65706e1d6c0ba5b7df2c6a9e9cc0392f6`。修正判据并让 launcher/DEX/SO hash 全匹配后又跑了一次，完整日志 `/tmp/westlake-w001-20260710-131205.log` 为 4,497,376 bytes，sha256 `623d7aac79c39e475ab33417248bd7df99df923d53c7a7cbd1cac8259ac3dfbb`。大日志均不进 git；优先读 `2026-07-10-oracle-audit.txt` 和 `2026-07-10-hashlocked-ill-baseline.txt`。当前 verdict：FAIL，墙 #43 未验收。
