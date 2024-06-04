# set default shell to fish
set -g default-shell {{command_output "which fish"}}

# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# reload config file (change file location to your the tmux.conf you want to use)
bind r source-file ~/.tmux.conf

# tms
bind C-o display-popup -E "tms"
bind C-j display-popup -E "tms switch"

# kill window
bind C-q kill-window
