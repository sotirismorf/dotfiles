#!/bin/sh

diff --color -u    ./alacritty.toml ~/.config/alacritty/alacritty.toml
diff --color -u    ./swayconfig     ~/.config/sway/config
diff --color -u    ./tmux.conf      ~/.tmux.conf
diff --color -u -r ./waybar       ~/.config/waybar
