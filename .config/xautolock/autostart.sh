#!/bin/sh

xautolock -time 1 -detectsleep \
	-corners 0+00 -cornerdelay 1 -cornerredelay 5 \
	-locker $HOME/.config/xautolock/lock.sh
