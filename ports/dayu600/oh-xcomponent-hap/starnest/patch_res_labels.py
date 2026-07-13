#!/usr/bin/env python3
"""patch_res_labels.py — equal-length, in-place string replacement in a compiled OH
`resources.index` (RestoolV2). Used to rename the launcher label (app_name /
EntryAbility_label) without the OH resource source tree or a restool recompile.

Why equal-length: RestoolV2 stores each string length-prefixed and is indexed by byte
offset (KEYS/IDSS sections). An equal-BYTE-length replacement keeps every length prefix
and offset valid; only the raw bytes change. There is NO file checksum/adler in this
format (the header is just the ASCII version string "RestoolV2 x.y.z"), so no recompute
is needed — unlike modules.abc (see patch_abc_title.py). Any length change would shift
offsets and corrupt the table, so we refuse it.

Usage:  patch_res_labels.py resources.index "OLD=NEW" ["OLD2=NEW2" ...]
  - applied in order; each OLD must occur EXACTLY once and be the same UTF-8 byte length.
"""
import sys

def main(argv):
    if len(argv) < 3:
        print(__doc__); return 2
    path = argv[1]
    d = bytearray(open(path, "rb").read())
    for a in argv[2:]:
        if "=" not in a:
            print(f"bad pair (need OLD=NEW): {a!r}"); return 2
        old, new = a.split("=", 1)
        ob, nb = old.encode("utf-8"), new.encode("utf-8")
        if len(ob) != len(nb):
            print(f"REFUSE {old!r}->{new!r}: length {len(ob)} != {len(nb)} bytes"); return 1
        n = d.count(ob)
        if n != 1:
            print(f"REFUSE {old!r}: occurs {n} times (need exactly 1)"); return 1
        d[:] = d.replace(ob, nb)
        print(f"patched {old!r} -> {new!r} ({len(nb)}B)")
    open(path, "wb").write(d)
    print("ok")
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv))
