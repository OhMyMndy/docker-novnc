#!/bin/bash
set -ex

RUN_TINT2=${RUN_TINT2:-yes}
RUN_XTERM=${RUN_XTERM:-yes}

case $RUN_TINT2 in
  false|no|n|0)
    rm -f /app/conf.d/tint2.conf
    ;;
esac

case $RUN_XTERM in
  false|no|n|0)
    rm -f /app/conf.d/xterm.conf
    ;;
esac

exec supervisord -c /app/supervisord.conf
