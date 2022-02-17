#!/bin/bash

r=$(echo -e "reboot\nshutdown\nshuttimer\ncancel" | dmenu -i -fn "Awesome-20" -nb "#455" -nf "#ff9860" -sb "#f56" -sf "#03f")

case "$r" in
        reboot) doas s6-shutdown -r now  ;;
        shutdown) doas s6-shutdown -h now  ;;
        shuttimer) doas s6-shutdown -t 8:20  ;;
        cancel) doas s6-shutdown -c  ;;
        *) echo "No option has been selected" ;;
esac
d_shutdown.sh (END)
