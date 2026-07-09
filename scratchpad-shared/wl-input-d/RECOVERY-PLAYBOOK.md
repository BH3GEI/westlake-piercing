# 5583f5be Recovery Playbook
## Last Updated: 2026-07-09 11:40

---

## Current State

**Board 5583f5be**: Rebooted, serial console active at 1.5M baud
**Problem**: Shell unresponsive — commands echo to kernel log, not shell
**Root Cause**: Board is flooding serial with appspawn kernel logs

```
Symptom: "echo TEST" typed → appears in kernel log, not shell
Evidence: Kernel logs: "[1986.953174] audit: ... appspawn denied..."
```

**File Loss**: `/data/local/tmp/` was wiped on reboot
- `westlake_embedded_art_dlopen_probe.so` ❌
- `ivs-classes.jar` ❌
- All substrate files ❌

---

## What Works

✅ Serial console receives data (kernel logs)
✅ Board is alive (kernel logging)
✅ hdcd daemon running on board (pid 746)
❌ Mac hdc can't see board
❌ Serial shell input goes to kernel

---

## Recovery Options

### Option 1: Wait for appspawn storm to calm
Board's appspawn continuously denies write to `/sys/fs/.../userlist`.
This may settle over time. Keep polling with:

```bash
# Monitor hdc
hdc list targets -v
# Monitor serial
python3 -c "import serial; s=serial.Serial('/dev/cu.usbserial-AF95736F',1500000,timeout=1); print(s.read(100))"
```

### Option 2: Physical power cycle
Unplug/plug board power. Reboot clears `/data/local/tmp/`.

### Option 3: File transfer via base64
If shell becomes responsive, deploy via serial:
```bash
# Generate base64 of jar (7380 bytes → ~10KB base64)
base64 -i /tmp/ivs-final2.jar

# On board, decode:
echo '<base64>' | base64 -d > /data/local/tmp/ivs-classes.jar
```

---

## Files to Re-deploy

| File | Size | MD5 (on build host) | Path |
|------|------|---------------------|------|
| probe22.so | 65504 | a6b9522a2f54f7044a2856a1146a9ff1 | /tmp/probe22.so |
| ivs-final2.jar | 7380 | e3d8fa011db26b32fb8982e8af4b50db | /tmp/ivs-final2.jar |

---

## Commands to Run After Recovery

```bash
# 1. Deploy probe
hdc file send /tmp/probe22.so /data/local/tmp/westlake_embedded_art_dlopen_probe.so

# 2. Deploy IVS jar  
hdc file send /tmp/ivs-final2.jar /data/local/tmp/ivs-classes.jar

# 3. Run with -Ximage:none (skip boot image mismatch)
hdc shell "
  /data/local/tmp/wl-imgboot/dalvikvm \
    -Ximage:none \
    -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
    -classpath /data/local/tmp/ivs-classes.jar \
    adapter.window.InputVerifyStage
"

# 4. Check for IVS markers
hdc hilog | grep -E "IVS|WLTEST|systemMain|injectTouch"
```

---

## Serial Console Details

- **Port**: `/dev/cu.usbserial-AF95736F`
- **Baud**: 1,500,000 (1.5 Mbps)
- **Protocol**: 8N1
- **Challenge**: Kernel logs flood serial, commands go to klog not shell

---

## Serial Baud Detection

```python
import serial
for baud in [9600, 19200, 38400, 57600, 115200, 230400, 460800, 921600, 1000000, 1500000, 2000000]:
    s = serial.Serial('/dev/cu.usbserial-AF95736F', baud, timeout=1)
    s.write(b'\r\n')
    d = s.read(100)
    s.close()
    if b'root' in d or b'#' in d:
        print(f"Shell at {baud}")
```

**Correct baud**: 1,500,000 (1.5 Mbps)
