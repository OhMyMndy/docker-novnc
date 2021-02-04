#!/bin/bash
set -ex

export RUN_XTERM=${RUN_XTERM:-yes}
export RUN_XHOST=${RUN_XHOST:-yes}

case $RUN_XTERM in
  false|no|n|0)
    rm -f /etc/supervisor/conf.d/xterm.conf
    ;;
esac

case $RUN_XHOST in
  false|no|n|0)
    rm -f /etc/supervisor/conf.d/xhost.conf
    ;;
esac
export VNC_DEST="${VNC_DEST:-localhost:5900}"

exec supervisord -c /etc/supervisor/supervisord.conf
