#!/usr/bin/env python3
"""Patch core-oj.jar so Field.isSynthetic() returns false without recursion.

This is a narrow DAYU600 bringup workaround for the A2OH ART standalone
runtime. The original Java implementation can recurse while java.io.File
initialization is being tolerated. The replacement bytecode is:

  const/4 v0, #0
  return v0

The script rewrites classes.dex in-place inside a new jar and refreshes the
DEX SHA-1 and Adler32 header fields.
"""

import hashlib
import struct
import sys
import zlib
import zipfile
from pathlib import Path


def uleb(data, off):
    result = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        result |= (b & 0x7F) << shift
        if (b & 0x80) == 0:
            return result, off
        shift += 7


def u16(data, off):
    return struct.unpack_from("<H", data, off)[0]


def u32(data, off):
    return struct.unpack_from("<I", data, off)[0]


def read_string(data, string_ids_off, idx):
    string_data_off = u32(data, string_ids_off + idx * 4)
    _, pos = uleb(data, string_data_off)
    end = data.index(0, pos)
    return data[pos:end].decode("utf-8", errors="replace")


def patch_dex(dex):
    data = bytearray(dex)
    string_ids_size = u32(data, 0x38)
    string_ids_off = u32(data, 0x3C)
    type_ids_size = u32(data, 0x40)
    type_ids_off = u32(data, 0x44)
    proto_ids_off = u32(data, 0x4C)
    method_ids_size = u32(data, 0x58)
    method_ids_off = u32(data, 0x5C)
    class_defs_size = u32(data, 0x60)
    class_defs_off = u32(data, 0x64)

    strings = [read_string(data, string_ids_off, i) for i in range(string_ids_size)]
    types = [u32(data, type_ids_off + i * 4) for i in range(type_ids_size)]
    type_names = [strings[idx] for idx in types]

    target_class = type_names.index("Ljava/lang/reflect/Field;")
    target_name = strings.index("isSynthetic")

    target_method_idx = None
    for i in range(method_ids_size):
        off = method_ids_off + i * 8
        class_idx = u16(data, off)
        proto_idx = u16(data, off + 2)
        name_idx = u32(data, off + 4)
        shorty_idx = u32(data, proto_ids_off + proto_idx * 12)
        return_type_idx = u32(data, proto_ids_off + proto_idx * 12 + 4)
        params_off = u32(data, proto_ids_off + proto_idx * 12 + 8)
        no_params = params_off == 0 or u32(data, params_off) == 0
        if (
            class_idx == target_class
            and name_idx == target_name
            and strings[shorty_idx] == "Z"
            and type_names[return_type_idx] == "Z"
            and no_params
        ):
            target_method_idx = i
            break
    if target_method_idx is None:
        raise RuntimeError("Field.isSynthetic()Z method_id not found")

    class_data_off = None
    for i in range(class_defs_size):
        off = class_defs_off + i * 32
        if u32(data, off) == target_class:
            class_data_off = u32(data, off + 24)
            break
    if class_data_off is None:
        raise RuntimeError("Field class_def not found")

    pos = class_data_off
    static_fields_size, pos = uleb(data, pos)
    instance_fields_size, pos = uleb(data, pos)
    direct_methods_size, pos = uleb(data, pos)
    virtual_methods_size, pos = uleb(data, pos)

    for _ in range(static_fields_size + instance_fields_size):
        _, pos = uleb(data, pos)
        _, pos = uleb(data, pos)

    for method_count in (direct_methods_size, virtual_methods_size):
        method_idx = 0
        for _ in range(method_count):
            diff, pos = uleb(data, pos)
            method_idx += diff
            _, pos = uleb(data, pos)
            code_off, pos = uleb(data, pos)
            if method_idx == target_method_idx:
                if code_off == 0:
                    raise RuntimeError("Field.isSynthetic()Z has no code item")
                registers_size = u16(data, code_off)
                insns_size = u32(data, code_off + 12)
                if registers_size < 1 or insns_size < 2:
                    raise RuntimeError("Field.isSynthetic()Z code item too small")
                insns_off = code_off + 16
                patched_units = [0x0012, 0x000F] + [0x0000] * (insns_size - 2)
                data[insns_off:insns_off + insns_size * 2] = struct.pack(
                    "<" + "H" * insns_size, *patched_units)
                data[12:32] = hashlib.sha1(data[32:]).digest()
                struct.pack_into("<I", data, 8, zlib.adler32(data[12:]) & 0xFFFFFFFF)
                return bytes(data)

    raise RuntimeError("Field.isSynthetic()Z class_data method not found")


def main():
    if len(sys.argv) != 3:
        print(f"usage: {sys.argv[0]} INPUT.jar OUTPUT.jar", file=sys.stderr)
        return 2
    src = Path(sys.argv[1])
    dst = Path(sys.argv[2])
    if src.resolve() == dst.resolve():
        raise RuntimeError("input and output must differ")
    with zipfile.ZipFile(src, "r") as zin:
        patched = patch_dex(zin.read("classes.dex"))
        with zipfile.ZipFile(dst, "w") as zout:
            for info in zin.infolist():
                content = patched if info.filename == "classes.dex" else zin.read(info.filename)
                zout.writestr(info, content)
    print(f"patched {src} -> {dst}")


if __name__ == "__main__":
    raise SystemExit(main())
