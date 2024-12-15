#!/usr/bin/zsh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar bar --config=/home/bbourgeois/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."
