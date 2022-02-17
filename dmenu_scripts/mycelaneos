#!/bin/bash

mycelaneos=$(echo -e "browser\nrange\nrandr\ncommander\nmail\nfiles\nbatt" | dmenu -i -fn "Awesome-20" -nb "#649" -nf "#ff9926" -sb "#f91" -sf "#32f")

case "$mycelaneos" in
	browser) waterfox-g4  ;;
	range) kitty ranger  ;;
	randr) arandr  ;;
	commander) kitty mc  ;;
	mail) geary  ;;
	files) pcmanfm  ;;
	batt) kitty batstat  ;;
	*) echo "No option has been selected"  ;;
esac
