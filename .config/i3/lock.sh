#!/bin/bash

i3lock -e -f -c 000000 #-i ~/.config/i3/lock.png
sleep 20 && pgrep i3lock && xset dpms force off
