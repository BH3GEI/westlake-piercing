#!/usr/bin/env bash
# 从 state/LEDGER.md + state/ATOM-MAP.md + state/FRONTIER.md + state/BOARDS.toml
# 生成 docs/dashboard/progress.html。thinker 不手改 HTML；派力工跑本脚本。
#
# 用法: oracle/refresh-dashboard.sh
# 退出码: 0=写好  1=缺输入
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
OUT="$ROOT/docs/dashboard/progress.html"
LEDGER="$ROOT/state/LEDGER.md"
MAP="$ROOT/state/ATOM-MAP.md"
FRONTIER="$ROOT/state/FRONTIER.md"
BOARDS="$ROOT/state/BOARDS.toml"
QUEUE="$ROOT/state/QUEUE.md"

for f in "$LEDGER" "$MAP" "$FRONTIER" "$BOARDS"; do
  [ -f "$f" ] || { echo "FAIL: missing $f"; exit 1; }
done
mkdir -p "$(dirname "$OUT")"

python3 - "$ROOT" "$OUT" <<'PY'
import re, sys, html, datetime
from pathlib import Path
root, out = Path(sys.argv[1]), Path(sys.argv[2])
ledger = (root/"state/LEDGER.md").read_text()
amap = (root/"state/ATOM-MAP.md").read_text()
frontier = (root/"state/FRONTIER.md").read_text()
boards = (root/"state/BOARDS.toml").read_text()
queue = (root/"state/QUEUE.md").read_text() if (root/"state/QUEUE.md").exists() else ""

# parse LEDGER rows: | # | name | layer | status | V | domain | evidence |
rows=[]
for line in ledger.splitlines():
    m=re.match(r'\|\s*(\d+)\s*\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|', line)
    if not m: continue
    n,name,layer,status,v,dom,ev = [x.strip() for x in m.groups()]
    if not n.isdigit(): continue
    rows.append(dict(n=int(n), name=name, layer=layer, status=status, v=v, dom=dom, ev=ev))

# parse ATOM-MAP: | # | ... | atom | conf | note |
mmap={}
for line in amap.splitlines():
    m=re.match(r'\|\s*(\d+)\s*\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|\s*([^|]+)\|', line)
    if not m: continue
    n,short,atom,conf,note=[x.strip() for x in m.groups()]
    if not n.isdigit(): continue
    mmap[int(n)]=dict(atom=atom, conf=conf, note=note, short=short)

def cls(status, v):
    if '🔧' in status: return 'wip'
    if '⏳' in status: return 'pending'
    if '✅' in status:
        if v=='✔': return 'pass'
        if v=='✗': return 'contradict'
        return 'claimed'
    return 'other'

counts={'pass':0,'claimed':0,'contradict':0,'wip':0,'pending':0,'other':0}
for r in rows:
    counts[cls(r['status'], r['v'])]+=1

# boards online
online=[]
for block in re.split(r'\[\[board\]\]', boards)[1:]:
    alias=re.search(r'alias\s*=\s*"([^"]+)"', block)
    on=re.search(r'online\s*=\s*(true|false)', block)
    tier=re.search(r'tier\s*=\s*"([^"]+)"', block)
    if alias and on:
        online.append((alias.group(1), on.group(1), tier.group(1) if tier else '?'))

now=datetime.datetime.now().strftime('%Y-%m-%d %H:%M')
# frontier first non-empty meaningful lines
f_lines=[l for l in frontier.splitlines() if l.strip() and not l.strip().startswith('<!--')][:12]

def esc(s): return html.escape(s)

tr=[]
for r in rows:
    c=cls(r['status'], r['v'])
    counts[c]=counts.get(c,0) # already counted
    m=mmap.get(r['n'], {})
    atom=m.get('atom','—')
    conf=m.get('conf','pending')
    star='★' if r['n']==43 or '★' in r['name'] else ''
    tr.append(
      f"<tr class='{c}' data-n='{r['n']}'>"
      f"<td class='n'>{star}{r['n']}</td>"
      f"<td class='name'>{esc(r['name'])}</td>"
      f"<td>{esc(r['layer'])}</td>"
      f"<td>{esc(r['status'])}</td>"
      f"<td>{esc(r['v'])}</td>"
      f"<td class='atom'>{esc(atom)}</td>"
      f"<td class='conf conf-{esc(conf)}'>{esc(conf)}</td>"
      f"</tr>"
    )

board_html=''.join(
  f"<span class='board {'on' if o=='true' else 'off'}'>{esc(a)} <small>{esc(t)}</small></span>"
  for a,o,t in online
)

page=f"""<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8"/>
<title>WestLake 穿刺进度看板</title>
<style>
:root {{
  --bg:#0f1419; --panel:#1a222c; --text:#e7ecf1; --muted:#8b9aab;
  --pass:#2f9e44; --claimed:#748ffc; --contradict:#e03131;
  --wip:#f59f00; --pending:#868e96; --line:#2a3542;
  --font: "IBM Plex Sans", "Noto Sans SC", system-ui, sans-serif;
  --mono: "IBM Plex Mono", ui-monospace, monospace;
}}
* {{ box-sizing:border-box; }}
body {{ margin:0; background:var(--bg); color:var(--text); font:14px/1.45 var(--font); }}
header {{ padding:20px 28px 8px; border-bottom:1px solid var(--line); }}
header h1 {{ margin:0 0 6px; font-size:22px; letter-spacing:.02em; }}
header .meta {{ color:var(--muted); font-size:12px; }}
.wrap {{ padding:20px 28px 48px; max-width:1280px; margin:0 auto; }}
.cards {{ display:flex; flex-wrap:wrap; gap:10px; margin:14px 0 22px; }}
.card {{ background:var(--panel); border:1px solid var(--line); border-radius:8px; padding:12px 16px; min-width:110px; }}
.card b {{ display:block; font-size:22px; font-variant-numeric:tabular-nums; }}
.card span {{ color:var(--muted); font-size:11px; text-transform:uppercase; letter-spacing:.06em; }}
.card.pass b {{ color:var(--pass); }}
.card.claimed b {{ color:var(--claimed); }}
.card.contradict b {{ color:var(--contradict); }}
.card.wip b {{ color:var(--wip); }}
.card.pending b {{ color:var(--pending); }}
.boards {{ margin:8px 0 18px; display:flex; gap:8px; flex-wrap:wrap; }}
.board {{ padding:4px 10px; border-radius:999px; border:1px solid var(--line); font-family:var(--mono); font-size:12px; }}
.board.on {{ background:#14301f; color:#8ce99a; }}
.board.off {{ background:#2b1717; color:#ffa8a8; }}
.frontier {{ background:var(--panel); border:1px solid var(--line); border-radius:8px; padding:14px 16px; margin-bottom:22px; white-space:pre-wrap; font-family:var(--mono); font-size:12px; color:#ced4da; }}
table {{ width:100%; border-collapse:collapse; background:var(--panel); border:1px solid var(--line); border-radius:8px; overflow:hidden; }}
th, td {{ padding:8px 10px; border-bottom:1px solid var(--line); text-align:left; vertical-align:top; }}
th {{ color:var(--muted); font-size:11px; text-transform:uppercase; letter-spacing:.05em; background:#121820; position:sticky; top:0; }}
tr.pass td.n {{ color:var(--pass); }}
tr.claimed td.n {{ color:var(--claimed); }}
tr.contradict td.n {{ color:var(--contradict); }}
tr.wip td.n {{ color:var(--wip); font-weight:700; }}
tr.pending td.n {{ color:var(--pending); }}
td.name {{ max-width:360px; }}
td.atom {{ font-family:var(--mono); font-size:11px; color:#adb5bd; max-width:280px; }}
.conf-exact {{ color:#8ce99a; }}
.conf-related {{ color:#ffd43b; }}
.conf-none {{ color:#ffa8a8; }}
.conf-pending {{ color:#868e96; }}
footer {{ margin-top:18px; color:var(--muted); font-size:11px; }}
code {{ font-family:var(--mono); }}
</style>
</head>
<body>
<header>
  <h1>WestLake 穿刺进度</h1>
  <div class="meta">生成于 {now} · 源: state/LEDGER.md + state/ATOM-MAP.md · 刷新: <code>oracle/refresh-dashboard.sh</code></div>
</header>
<div class="wrap">
  <div class="cards">
    <div class="card pass"><b>{counts['pass']}</b><span>复核 PASS</span></div>
    <div class="card claimed"><b>{counts['claimed']}</b><span>claimed 待复核</span></div>
    <div class="card contradict"><b>{counts['contradict']}</b><span>矛盾</span></div>
    <div class="card wip"><b>{counts['wip']}</b><span>进行中</span></div>
    <div class="card pending"><b>{counts['pending']}</b><span>未开始</span></div>
    <div class="card"><b>{len(rows)}</b><span>墙合计</span></div>
  </div>
  <div class="boards">{board_html}</div>
  <h2 style="font-size:14px;color:var(--muted);font-weight:600;margin:0 0 8px;">FRONTIER</h2>
  <div class="frontier">{esc(chr(10).join(f_lines))}</div>
  <table>
    <thead><tr><th>#</th><th>承重原子</th><th>层</th><th>状态</th><th>V</th><th>规格原子</th><th>映射</th></tr></thead>
    <tbody>
{chr(10).join(tr)}
    </tbody>
  </table>
  <footer>
    颜色: 绿=已复核 · 蓝=claimed未复核 · 红=矛盾 · 橙=进行中 · 灰=未开始。
    映射置信来自 ATOM-MAP（exact/related/none/pending）。规格进度≠本仓进度。
  </footer>
</div>
</body>
</html>
"""
out.write_text(page)
print(f"OK: wrote {out} ({len(rows)} walls)")
PY
