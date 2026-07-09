---
name: mofa-effect-ae-render-api
description: "MoFA-Effect 的 AE 渲染 API 已部署在 macmini2,公网 render.mofa.ai,web请求→视频闭环通"
metadata: 
  node_type: memory
  type: project
  originSessionId: 62c79794-4583-498c-9ed8-be1cb7a3e053
---

MoFA-Effect 下游渲染后端 = **通用 AE 渲染 API**,部署在 **macmini2**(ssh 别名 macmini2,frp 41702,弱密码 macmini)。

**架构**:HTTP 服务 `~/mofa-effect-ae/ae_render_api.py`(纯 stdlib,py3.9,`from __future__ import annotations` 必须)→ 单 worker 串行 → `aerender`(headless,已证明)+ 文件级替换。
- 渲染:`aerender -project X.aep -comp <comp> -output out.mp4`。AE 2026 装在 macmini2,binary=`/Applications/Adobe After Effects 2026/aerender`
- 换素材:APFS `cp -c -R` 秒克隆模板→覆盖 `(Footage)/` 同名文件(footage 按名自动 relink,原模板不动)
- 换文字:.aepx(XML)source-text 替换,需模板先转 aepx(GUI 一次性)

**关键坑(已踩)**:AE headless 渲染必须先有 `mac` 图形登录会话(否则 aerendercore "could not be launched");autologin=mac 已设。**GUI 脚本全死**:`AfterFX -r` 被忽略、`osascript DoScript` -1712 超时——所以只能走文件级替换,不能脚本。

**端点**:`GET /health /templates /jobs /jobs/<id> /jobs/<id>/video`,`POST /render`(body: template/comp/media/text/range/output_name)。
**公网**:`https://render.mofa.ai` — 挂在已有 cloudflared 命名隧道 card-studio(mofa.ai 域,config `~/.cloudflared/config.yml`)。
**自启**:launchd `~/Library/LaunchAgents/com.mofa.ae-render-api.plist`(KeepAlive)。

**已验证**:公网 POST→渲染→下载 MP4 全通;媒体换素材 report `media_applied:["Logo.png"]` 成功。
**未做/待办**:仅注册 1 个模板(soft_motion_slideshow,comp=Render);字体缺失(fallback);text/.aepx 未实测;上游 mofa-effect 仓库(CapCut网页+Sora,本地已解包)尚未对接;安全:8787 无鉴权、API key 明文在 ~/mofa/config.json。

仓库 mofa-effect(github mofa-org/mofa-effect,私有)= CapCut网页Playwright+Sora,**不是**历史文档里那个 15500 行 MoFA-Effect-AE。此 API 是给它加的本地 headless 出片后端,替代脆弱的 CapCut 网页导出。
