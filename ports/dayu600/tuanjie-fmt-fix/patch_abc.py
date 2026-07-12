import zlib, sys
p = sys.argv[1]
d = bytearray(open(p, 'rb').read())
hdr  = int.from_bytes(d[8:12], 'little')
calc = zlib.adler32(bytes(d[12:])) & 0xffffffff
assert hdr == calc, f"adler mismatch pre-patch: header {hdr:#x} vs calc {calc:#x}"
pi = bytes.fromhex('54590100')   # string-id LE of "PORTRAIT_INVERTED" @0x15954
po = bytes.fromhex('4a590100')   # string-id LE of "PORTRAIT"          @0x1594a
n = d.count(pi)
assert n == 1, f"expected exactly 1 PORTRAIT_INVERTED operand, found {n} -> abc layout changed, refusing"
i = d.find(pi); d[i:i+4] = po
ck = zlib.adler32(bytes(d[12:])) & 0xffffffff
d[8:12] = ck.to_bytes(4, 'little')
open(p, 'wb').write(bytes(d))
print(f"[4.5] orientation abc @ {i:#x}: kPortraitUpsideDown value PORTRAIT_INVERTED -> PORTRAIT, adler {hdr:#x} -> {ck:#x}")
