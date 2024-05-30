#!/bin/bash

mouse_mode=$(tmux show-option -gv mouse)

if [ "$mouse_mode" = "on" ]; then
	tmux set -g mouse off
	tmux display-message 'Mouse mode disabled'
else
	tmux set -g mouse on
	tmux display-message 'Mouse mode enabled'
fi
