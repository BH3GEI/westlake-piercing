# 团结游戏上 5ce 面板 — 唯一缺件 & 给同事的精确清单

**日期:** 2026-07-13　**板:** 5ce (`5ce2dcee00000000000000000923012c`, uis7885 / OpenHarmony 6.1.0.31 / API 23 / 纯 64 位)

## 结论(一句话)
OH 原生团结引擎(`libtuanjie.so`, arm64, md5 `e8397680…`)**我这边已有,字节一致**。唯一缺的是**和它配套的 il2cpp 数据 + 那份已经打好的 OH 原生 `.hap`** —— 这批产物当初 host-built 后归档到了 **GZ02**(同事的广州编译机队,不在我可达的 infra 里)。数据一到,**分钟级**就能签进 5ce 出画面(下面的重签管线已跑通、验过)。

## 为什么本机凑不出来(检索已穷尽,均有据)
- **本机(Desktop / HOME / Downloads / 企业微信收件):** 只有引擎 `.so` + 两个骨架 JSON(`RuntimeInitializeOnLoads.json` / `ScriptingAssemblies.json`)+ DEPLOY-NOTE/MD5SUMS 文档。**没有** `data.tj3d` / `global-metadata.dat` / 这个游戏的 `libil2cpp.so` / `oh_game*.hap`。
- **我的云编译机(`ecs-9f6c` / compiler):** 全盘 find,**零命中**;没有 `/opt/21.Game`、没有 `/mnt/gz02_nfs`、没有 `/data/10.AlexProject`、没有任何 GZ NFS 挂载。
- **同事已发的安卓包 `MiniGame-android.apk`:** 硬核实证是 **32 位 Mono**(`libmonobdwgc-2.0.so` + `Assembly-CSharp.dll` + 一堆 `System.*.dll`,只有 `armeabi-v7a`),**没有** `global-metadata.dat` / `data.tj3d` / `libil2cpp.so`。Mono↔il2cpp 不是同一套,喂不动 OH 的 il2cpp 引擎。→ **安卓那个包不解决问题。**
- **GZ02 / GZ05:** 是同事的编译/归档机(x86_64 Ubuntu,GZ02 存 `/data/source/oh-p7885-wukong100`,GZ05 经 NFS 挂 GZ02 `/mnt/gz02_nfs`)。不在我 `~/.ssh/config` / `infra.md` 里 → 我这边够不到。

il2cpp 的 `global-metadata.dat`+`libil2cpp.so` 是 il2cpp Editor 构建出的**配对产物**,只能来自同事在 GZ 机队上的那次 `OHBuild.BuildAll`,本机既无构建工程(无 `OHBuild`/`InfoHud.cs`/`Assets`/`ProjectSettings`)也无法从 Mono 包反推。**所以这一步必须同事出件。**

---

## 【给同事 · 可直接转发】请发我下面任一份(A 最省事)

### A(首选,最快,拖进来就能用):那份已打好的 OH 原生 `.hap`
GZ02 上,REBUILD #5 那次构建的输出:
```
scratchpad/tjplay/out_game1/oh_game1.hap      ← MiniGame(触屏打球)+ InfoHud + blob 阴影,已修 level0
scratchpad/tjplay/out_game2/oh_game2.hap      ← BenchGame(性能微基准),可选
```
这份 `.hap` 里**已经含全套**:`libtuanjie.so` 引擎 + 配套 `libil2cpp.so`/`global-metadata.dat`/`data.tj3d`/`boot.config` + 正确的 ArkTS 生命周期胶水 + XComponent 绑定。我只需按 5ce 的证书**重签一次**就装。**签或不签都行,不用你改任何东西。**

### B(退路,若 A 拿不到):REBUILD #5 那套 il2cpp 数据 + 引擎(6 个文件)
按 `MD5SUMS.txt`(REBUILD #5,game1)核对:
```
tj_libs/libtuanjie.so           27752432 B  md5 e8397680a6b291fffeeba1c341ced82d   (STOCK 引擎,我已有,可不发)
tj_libs/libil2cpp.so                        md5 126546a0ee124ca3f514a715572d0cf5
tj_libs/libc++_shared.so         1262248 B  md5 5297ec9b394612dc8602abae70b1444d
tj_libs/liboh_tuanjie_host.so      88472 B  md5 ca016d5b5d91a1664ea2a3e089067076
tj_data/Data/data.tj3d            241376 B  md5 12a0ac9167edd374873d286c57fe53cf
tj_data/Data/Managed/Metadata/global-metadata.dat   md5 2a6e6ec6e57d5065391759a98586527c
tj_data/Data/boot.config                    (以及 Data/ 下其余原样文件)
```
引擎按 `rawfile/Data/…` 解析数据(实证:引擎里有 `rawfile/Data/boot.config`、`rawfile/Data/tuanjie_app_guid` 字符串),所以 B 到手后我把 `tj_data/Data/` 整个塞进 `.hap` 的 `resources/rawfile/Data/`,配 `libtuanjie.so`+`libil2cpp.so`+`libc++_shared.so`,建 + 签 + 装。**注意 B 需要那份 ArkTS 胶水**(团结 OH 导出会生成一整套驱动 34 个 `nativeXxx` 生命周期的 ArkTS,手写不可测),所以 **A 明显优于 B**;若只能给 B,请连带把导出工程里的 `entry/src/main/ets` 那套团结 ArkTS 胶水一起发。

---

## 到手后我这边做什么(已跑通,分钟级)
重签管线本机已验证 OK(`sign-profile → sign-app → verify-app` 全绿,输出与线上 `glxc-signed.hap` 同构;5ce 今天就在跑同法签名的 `com.westlake.glxc/glxc2`):
```
bash ports/dayu600/oh-xcomponent-hap/resign-oh-hap.sh  oh_game1.hap
#  → 读出 .hap 的 bundleName → 用 5ce UDID 铸 debug profile → 重签 → verify → 打印 hdc install 行
hdc -t 5ce… install oh_game1-5ce-signed.hap && hdc -t 5ce… shell aa start -b <bundle> -a EntryAbility
```
(仅在板子空闲、无并发 bring-up 时装。)

## 备注
- `OpenHarmony.p12` 口令 `123456` 是 SDK 公开默认,非机密。
- 5ce UDID(profile 用):`E28A04046CD8DC5A2BB7040484CFED32B9478ED4C712D45AA2653F6D6123477B`。
- 相关背景:`state/DECISIONS.md`(T2a 接法)、memory `tuanjie-oh-native-thin-hap` / `oh-native-hap-first-frame-5ce`。
