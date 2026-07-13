#!/usr/bin/env python3
"""patch_abc_title.py — in-place, equal-length string replacement in an OH ArkTS
`modules.abc` (panda file), with panda-header adler32 recompute.

Why equal-length only: a panda file references its string entries by byte offset from
many other tables (LiteralArray, method/field names, ...). An EQUAL-length, in-place
byte replacement keeps every offset and every uleb128 length-prefix identical, so the
only thing that changes is the header adler32 (stored LE at bytes [8:12], computed over
data[12:]). Any length change would shift offsets and corrupt the file — so we refuse it.

This lets us re-title a prebuilt SIGNED XComponent shell hap without a DevEco/ArkTS
recompile: unpack -> patch modules.abc -> repack -> re-align -> re-sign.

Same adler32 discipline as ../../tuanjie-fmt-fix/patch_abc.py (that one flips a single
string-id operand; this one edits string *bytes*). Both guard with an occurrence count.

Usage:  patch_abc_title.py modules.abc "OLD=NEW" ["OLD2=NEW2" ...]
  - OLD/NEW are UTF-8; for BMP CJK, UTF-8 == MUTF-8 so this is byte-exact.
  - each OLD must occur EXACTLY once and len(NEW.utf8) == len(OLD.utf8).
"""
import sys, zlib

def main(argv):
    if len(argv) < 3:
        print(__doc__); return 2
    path = argv[1]
    pairs = []
    for a in argv[2:]:
        if "=" not in a:
            print(f"bad pair (need OLD=NEW): {a!r}"); return 2
        old, new = a.split("=", 1)
        pairs.append((old, new))

    d = bytearray(open(path, "rb").read())
    for old, new in pairs:
        ob, nb = old.encode("utf-8"), new.encode("utf-8")
        if len(ob) != len(nb):
            print(f"REFUSE {old!r}->{new!r}: length {len(ob)} != {len(nb)} bytes"); return 1
        n = d.count(ob)
        if n != 1:
            print(f"REFUSE {old!r}: occurs {n} times (need exactly 1)"); return 1
        i = d.find(ob)
        d[i:i+len(ob)] = nb
        print(f"patched {old!r} -> {new!r} @ {hex(i)} ({len(nb)}B)")

    old_adler = int.from_bytes(d[8:12], "little")
    new_adler = zlib.adler32(bytes(d[12:])) & 0xffffffff
    d[8:12] = new_adler.to_bytes(4, "little")
    print(f"adler32 {hex(old_adler)} -> {hex(new_adler)}")

    # post-check: new present, old gone
    for old, new in pairs:
        if new.encode("utf-8") not in d or (old != new and old.encode("utf-8") in d):
            print(f"post-check FAILED for {old!r}->{new!r}"); return 1
    open(path, "wb").write(d)
    print("ok")
    return 0

if __name__ == "__main__":
    sys.exit(main(sys.argv))
