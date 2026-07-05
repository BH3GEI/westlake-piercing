#!/usr/bin/env python3
# Extract framework-res.apk (Android framework resource package) from a local Android
# system image (super partition -> system ext4). Needed for LayoutInflater to resolve
# framework resources (android:style/... 0x01xxxxxx) that the OHOS board does not ship.
# Requires: pip install ext4 (in a venv). Usage: python extract-framework-res.py <system.img> <out.apk>
import struct, sys, ext4
IMG, OUT = sys.argv[1], sys.argv[2]
f = open(IMG, 'rb')
# --- find super partition via GPT ---
f.seek(512); hdr = f.read(92); assert hdr[:8] == b'EFI PART'
part_lba = struct.unpack_from('<Q', hdr, 72)[0]; num = struct.unpack_from('<I', hdr, 80)[0]; esz = struct.unpack_from('<I', hdr, 84)[0]
SUPER = None
f.seek(part_lba*512)
for i in range(num):
    e = f.read(esz)
    if e[:16] == b'\x00'*16: continue
    name = e[56:128].decode('utf-16-le','ignore').rstrip('\x00')
    if name == 'super': SUPER = struct.unpack_from('<Q', e, 32)[0]*512
# --- parse LP metadata -> system ext4 offset ---
META = SUPER + 4096 + 4096 + 4096
f.seek(META); h = f.read(256); hsz = struct.unpack_from('<I', h, 8)[0]
o = 80; part_off,part_num,part_esz = struct.unpack_from('<III', h, o); o += 12
ext_off,ext_num,ext_esz = struct.unpack_from('<III', h, o)
tables = META + hsz
f.seek(tables+part_off); pdata = f.read(part_num*part_esz)
parts = {}
for i in range(part_num):
    e = pdata[i*part_esz:(i+1)*part_esz]; nm = e[:36].split(b'\x00')[0].decode()
    parts[nm] = struct.unpack_from('<IIII', e, 36)[1]
f.seek(tables+ext_off); edata = f.read(ext_num*ext_esz)
fe = parts.get('system', parts.get('system_a'))
target = struct.unpack_from('<Q', edata, fe*ext_esz+12)[0]
SYS = SUPER + target*512
# --- read framework-res.apk from the system ext4 ---
vol = ext4.Volume(f, offset=SYS)
def isdir(de):
    ft = de.file_type; v = ft.value if hasattr(ft,'value') else (ft[0] if isinstance(ft,(bytes,bytearray)) else int(ft)); return v==2
def getdir(p): return vol.root if p=='' else vol.inode_at(p if p.startswith('/') else '/'+p)
def find(p, d=0):
    if d>5: return None
    try: entries=list(getdir(p).opendir())
    except: return None
    for de,ft in entries:
        n=de.name_str
        if n in ('.','..'): continue
        q=(p+'/'+n).replace('//','/')
        if n=='framework-res.apk': return q
        if isdir(de):
            r=find(q,d+1)
            if r: return r
res = find('')
open(OUT,'wb').write(vol.inode_at(res).open().read())
print("extracted", res, "->", OUT)
