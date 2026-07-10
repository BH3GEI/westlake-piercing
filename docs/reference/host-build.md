# 编译与主机工具(基建)

> 用户定(2026-07-09):重编译走中国 Linux 编译机,不要默认在本机 Mac 上扛。2026-07-10 现场核验：当前 SSH Host 名为 `compiler`；旧 `huawei` 名称未配置。
> 本机只做轻活(改源码、推板、读日志)。细节以本文件为准。

## 编译主机:`ssh compiler`

```bash
ssh compiler        # ~/.ssh/config Host compiler → 中国 Linux 编译机(yao@…)
ssh compiler_root   # 同机 root(仅必要时)
```

- **用途**:重编译 / 大依赖 / AOSP·OHOS SDK·dex2oat·native `.so` / 需要大内存磁盘的活。
- **不要**:在 Mac 上默默 `make` 一整棵 ART/framework;需要重编直接用 compiler。
- **墙外下载**:机器在墙内。代理配置在本机 `/Users/yao/proxy-hysteria-mini4.yaml`;上机后 `source ~/proxy-env.sh`(若已布)再拉 dl.google / AOSP 等。
- **产物回流**:在 compiler 编完 → `scp`/`rsync` 回本仓或直接 `hdc file send` 上板(路径写进卡/证据)。

轻量例外(可留 Mac,不必强行上 compiler):

- `test-fixtures/dayu600-apk-probe/build-probe-mac.sh`(javac+d8 → probe dex,秒级)
- 纯文本/脚本/看板刷新

拿不准就上 compiler。

## 本机 `hdc`(任意目录可用)

二进制不在 Huawei Sdk 默认路径,而在:

```text
~/.local/openharmony-tools/bin/hdc   # 真身,Ver 3.2.0b(2026-07-09)
~/.local/bin/hdc                     # 软链(PATH 入口)
```

- `~/.zshrc` 已补:`export PATH="$HOME/.local/bin:$HOME/.local/openharmony-tools/bin:$PATH"`
- 新开终端应直接 `which hdc` → `hdc list targets`
- 证据:`evidence/F-002/`(oracle PASS)

板健康:`oracle/board-health.sh <serial>`(依赖 PATH 里的 hdc)。

## 上板跑 uptodown probe(速记)

- **正确入口**:板上 `/data/local/tmp/run-utd-long.sh`(LD_PRELOAD + toybox;`WESTLAKE_STAGE=uptodownProbe`)
- **错误入口**:`run-utd-probe.sh` 会二次 `JNI_CreateJavaVM` → 常 `rc=-1`,日志空
- 推新 dex 前先列出 PID、exe/cmdline 和启动路径；只允许结束本卡从 `/data/local/tmp` 启动的 prototype 精确 PID。禁止按 `appspawn` 名称批量杀，禁止碰 stock `/system/bin/appspawn`。
- 结果:`$S/apks/probe-logs/uptodown-probe.txt`(`S=/data/local/tmp/westlake-dayu600-substrate`)

## dlopen probe 坑(2026-07-09 钉)

- 板上旧 `libwestlake_embedded_art_dlopen_probe.so`：`uptodownProbe` 打完 `inputVerify SKIPPED` 就 `rc=0`，**不进 Java**。
- 修法：源码 `goto call_java_probe`；**在 `ssh compiler` 用 `aarch64-linux-gnu-gcc` 重编**，推到 `$S/probes/` **和** `$S/android/lib64/sidecars/`。
- **编译硬约束（板上 musl/OH）**：必须 `-nostdlib -nodefaultlibs -fno-stack-protector -Wl,--unresolved-symbols=ignore-all`。裸 `gcc -shared` 会链 glibc（`ld-linux-aarch64.so.1` / `__longjmp_chk`）→ `LD_PRELOAD` 加载失败。
- **compiler 当前 JNI headers（2026-07-10 实测）**：`/usr/lib/jvm/java-17-openjdk-amd64/include` + `/linux`；旧的 `java-21-openjdk-amd64` 路径在该机不存在。
- 成功标记：embed 日志出现 `W001: uptodownProbe direct Java path` + `past stage` + `CallStaticIntMethod ...embeddedMainNoExit begin`。
- 跑入口：repo-owned `oracle/device/run-utd-w001.sh` 显式部署到 `/data/local/tmp/run-utd-w001.sh`（LD_PRELOAD + toybox）。`atom-43.sh` 会校验 launcher、DEX 和两份 sidecar hash；不匹配即 FAIL。若自有 keepalive 锁住旧 class，先核对其 cmdline 指向本卡 substrate，再按精确 PID 结束；不得按进程名清理。
- W-001 临时验收：early theme 写 `/data/local/tmp/uptodown-early.txt`；真判据必须含 `wabAttr=0x7f040691 uamHasWab=true`。`0x010100b0` 是 autoLink，旧 WAB 结论作废。当前路径在已有 JNIEnv 的 constructor/toybox thread 同步执行；新建 8MB native pthread 的 `AttachCurrentThread` 已实测在进入 Java 前失败，不要恢复。栈结论若变化，以 `state/FRONTIER.md` 和 W-001 新证据为准。
- 当前 so 好版指纹：`1be37add…`（nostdlib）；坏版 `4397f331…`（glibc）。
