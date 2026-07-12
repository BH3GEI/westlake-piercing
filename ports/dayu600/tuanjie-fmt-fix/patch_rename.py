#!/usr/bin/env python3
# patch_rename.py — rename two UND import symbols inside libtuanjie.so's .dynstr,
# in place (same byte length, NUL-terminated), so the engine binds to our shim.
#
#   OH_NativeWindow_NativeWindowHandleOpt  ->  WLshim_NativeWindow_HandleOpt_fmtfix1
#   eglCreateWindowSurface                 ->  WLeglCreateWindowSurf0
#
# We restrict the edit to the .dynstr section only (never .rodata), so if the engine
# also holds these strings for logging/dlsym elsewhere, those copies are untouched.
import sys, struct

RENAMES = [
    (b"OH_NativeWindow_NativeWindowHandleOpt", b"WLshim_NativeWindow_HandleOpt_fmtfix1"),
    (b"eglCreateWindowSurface",                b"WLeglCreateWindowSurf0"),
]

def find_dynstr(buf):
    # ELF64 little-endian section-header walk to locate .dynstr (offset, size).
    assert buf[:4] == b"\x7fELF" and buf[4] == 2, "not ELF64"
    e_shoff   = struct.unpack_from("<Q", buf, 0x28)[0]
    e_shentsz = struct.unpack_from("<H", buf, 0x3a)[0]
    e_shnum   = struct.unpack_from("<H", buf, 0x3c)[0]
    e_shstrndx= struct.unpack_from("<H", buf, 0x3e)[0]
    def sh(i):
        base = e_shoff + i * e_shentsz
        name, typ, flags, addr, off, size = struct.unpack_from("<IIQQQQ", buf, base)
        return name, typ, off, size
    shstr_off = sh(e_shstrndx)[2]
    for i in range(e_shnum):
        name_off, typ, off, size = sh(i)
        end = buf.index(b"\x00", shstr_off + name_off)
        nm = buf[shstr_off + name_off:end]
        if nm == b".dynstr":
            return off, size
    raise SystemExit("no .dynstr")

def main():
    path = sys.argv[1]
    with open(path, "rb") as f:
        buf = bytearray(f.read())
    ds_off, ds_size = find_dynstr(buf)
    ds_end = ds_off + ds_size
    changed = 0
    for old, new in RENAMES:
        assert len(new) == len(old), f"length mismatch {old!r}({len(old)}) vs {new!r}({len(new)})"
        needle = old + b"\x00"
        repl   = new + b"\x00"
        # search only within .dynstr
        i = buf.find(needle, ds_off, ds_end)
        if i == -1:
            print(f"  WARN: {old.decode()} not found in .dynstr (already patched?)")
            continue
        # ensure single occurrence in .dynstr
        j = buf.find(needle, i + 1, ds_end)
        if j != -1:
            raise SystemExit(f"multiple {old!r} in .dynstr — abort")
        buf[i:i+len(repl)] = repl
        print(f"  patched @0x{i:x}: {old.decode()} -> {new.decode()}")
        changed += 1
    with open(path, "wb") as f:
        f.write(buf)
    print(f"done: {changed} symbol(s) renamed in {path}")

if __name__ == "__main__":
    main()
