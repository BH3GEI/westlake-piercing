#!/usr/bin/env python3
# zipalign_hap.py — page-align (4096) every STORED entry's data in a hap, zipalign-style.
# Copies each entry's compressed bytes + central-dir metadata verbatim; only rewrites the
# local-header extra padding so STORED data starts on a 4096 boundary (needed for OH direct
# mmap of uncompressed .so and rawfile assets). Deflated entries keep 0 extra (never mmap'd).
import sys, struct, zipfile

ALIGN = 4096
src_path, dst_path = sys.argv[1], sys.argv[2]

zin = zipfile.ZipFile(src_path, 'r')
infos = zin.infolist()

with open(src_path, 'rb') as sf, open(dst_path, 'wb') as out:
    central = []
    for zi in infos:
        # read the raw compressed bytes from the source local record
        sf.seek(zi.header_offset)
        lfh = sf.read(30)
        assert lfh[:4] == b'PK\x03\x04', "bad local header"
        n, m = struct.unpack_from('<HH', lfh, 26)
        sf.seek(zi.header_offset + 30 + n + m)
        raw = sf.read(zi.compress_size)

        name = zi.filename.encode('utf-8')
        flags = zi.flag_bits & ~0x08          # clear streaming bit; sizes are known
        method = zi.compress_type
        dt = zi.date_time
        dos_time = (dt[3] << 11) | (dt[4] << 5) | (dt[5] // 2)
        dos_date = ((dt[0] - 1980) << 9) | (dt[1] << 4) | dt[2]

        # choose extra padding so STORED data lands on ALIGN
        pos = out.tell()
        extra = b''
        if method == zipfile.ZIP_STORED:
            data_off = pos + 30 + len(name)
            pad = (-data_off) % ALIGN
            extra = b'\x00' * pad

        local = struct.pack('<IHHHHHIIIHH',
                            0x04034b50, zi.extract_version, flags, method,
                            dos_time, dos_date, zi.CRC,
                            zi.compress_size, zi.file_size, len(name), len(extra))
        out.write(local); out.write(name); out.write(extra); out.write(raw)

        central.append((zi, name, flags, method, dos_time, dos_date, pos))

    # central directory
    cd_start = out.tell()
    for (zi, name, flags, method, dos_time, dos_date, loff) in central:
        cdh = struct.pack('<IHHHHHHIIIHHHHHII',
                          0x02014b50, zi.create_version, zi.extract_version, flags, method,
                          dos_time, dos_date, zi.CRC, zi.compress_size, zi.file_size,
                          len(name), 0, 0, 0, zi.internal_attr, zi.external_attr, loff)
        out.write(cdh); out.write(name)
    cd_size = out.tell() - cd_start
    eocd = struct.pack('<IHHHHIIH', 0x06054b50, 0, 0, len(central), len(central),
                       cd_size, cd_start, 0)
    out.write(eocd)

print(f"wrote {dst_path}")
