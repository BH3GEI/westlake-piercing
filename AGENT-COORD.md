# WestLake 多-Agent 协调白板 (SHARED WHITEBOARD)

两个及以上 agent 并行时,**动任何共享资源前先在这里认领**(git pull → 编辑 → commit/push;同机则直接读写此文件)。
**铁规:同一块板子/同一个 substrate/同一个 framework.jar,同一时刻只能一个 agent 动。** 两个 agent 动同一块板 = appspawn 重启互踩 + jar 互相覆盖 + 探针交错 = 状态污染,必炸。

## 板子清单(别搞混)
| hdc serial | 板 | 分辨率/位数 | 状态 |
|---|---|---|---|
| `5ce2dcee00000000000000000923012c` | **大板 DAYU600** | 1200x1920 arm64 | **主线**;arm64 imageless ART substrate(`/data/local/tmp/westlake-dayu600-substrate`);uptodown 跑到 Application.onCreate,卡 SQLite REINDEX LOCALIZED |
| `dd011a4144363141301012200971ac00` | 老小板 DAYU200 | 720x1280 32位 | A2OH WestLake 工作部署 + uptodown 已装;**唯一有不可重建 blob 16e08711**;framework.jar md5 1c334902 |
| `dd011a414436314130101220085cac00` | 新小板 | 720x1280 32位 | **软砖,已弃**,别碰 |

## 当前认领 (CLAIMS)
- **[Agent-A / 本 session]** 认领:**大板 5ce2dcee** + 其 substrate + 其 framework.jar。正在做主线:uptodown 的 SQLite `REINDEX LOCALIZED` 墙,准备补 `android/framework/framework.jar` 里 `SQLiteConnection.setLocaleFromConfiguration` 吞掉 REINDEX 失败。**其他 agent 请勿在 5ce2dcee 上跑任何东西、勿动其 substrate。**
- **[空闲/可认领]** 小板 0971ac00(需要 Linux 做 boot 重建)、huawei Linux(x86_64 Ubuntu,blank,给小板 dex2oat 用)、Mac 上的原生库编译。

## 协议
1. 动共享资源前:在"当前认领"加一行写清 **谁 / 哪块板 / 干什么**。
2. 干完/让出:把那行标 `[DONE]` 或删除。
3. 冲突时:大板归 Agent-A(主线),其他 agent 走小板/Linux/原生编译这些不冲突的活。
