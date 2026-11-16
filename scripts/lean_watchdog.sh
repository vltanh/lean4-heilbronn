#!/usr/bin/env bash
# Kill any Lean process of this project whose resident memory exceeds LIMIT_KB, and log it.
LIMIT_KB=${LIMIT_KB:-10485760}
LOG=/home/vltanh/Documents/lean4-heilbronn/notes/watchdog.log
while true; do
  for pid in $(pgrep -f "toolchains/leanprover--lean4---v4.36.0-rc2/bin/lean"); do
    rss=$(awk '/VmRSS/ {print $2}' /proc/$pid/status 2>/dev/null)
    cwd=$(readlink /proc/$pid/cwd 2>/dev/null)
    if [ -n "$rss" ] && [ "$rss" -gt "$LIMIT_KB" ] && [[ "$cwd" == /home/vltanh/Documents/lean4-heilbronn* ]]; then
      file=$(tr '\0' ' ' < /proc/$pid/cmdline | grep -o 'Heilbronn/[^ ]*\.lean' | head -1)
      kill "$pid" && echo "$(date '+%F %T') killed pid $pid rss=${rss}kB file=$file" >> "$LOG"
    fi
  done
  sleep 20
done
