#!/bin/bash

r=$(echo -e "reboot\nshutdown\nshuttimer\ncancel" | dmenu -i -fn "Awesome-20" -nb "#455" -nf "#ff9860" -sb "#f56" -sf "#03f")

case "$r" in
        reboot) doas runit-shutdown -r now  ;;
        shutdown) doas runit-shutdown -h now  ;;
        shuttimer) doas runit-shutdown -t 8:20  ;;
        cancel) doas runit-shutdown -c  ;;
        *) echo "No option has been selected" ;;
esac
d_shutdown.sh (END)
