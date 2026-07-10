LOCAL=/Users/yao/westlake-local-build
B="C:/Users/ufop/a2oh-source-audit"
stream() {
  local dir="$1"
  echo ">>> streaming $dir ..."
  ssh -o ConnectTimeout=40 -o ServerAliveInterval=15 -o ServerAliveCountMax=400 -o StrictHostKeyChecking=no win "tar -cf - -C $B $dir" > "$LOCAL/$dir.tar" 2>/dev/null
  local sz=$(stat -f%z "$LOCAL/$dir.tar" 2>/dev/null || echo 0)
  # verify tar
  local n=$(tar -tf "$LOCAL/$dir.tar" 2>/dev/null | wc -l | tr -d ' ')
  echo "<<< $dir.tar = $((sz/1048576))M, entries=$n"
  [ "$n" -gt 5 ] && echo "VERIFY_OK $dir" || echo "VERIFY_FAIL $dir"
}
stream aosp-art-15
stream art-latest
stream aosp-android-11
echo "===ALLTRANSFERDONE==="
ls -la "$LOCAL"/*.tar 2>/dev/null | awk '{print $5, $NF}'
