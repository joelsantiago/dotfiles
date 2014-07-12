set -g status-fg colour232
set -g status-fg colour231
set -g status-bg colour234
set -g status-left-length 60
set -g status-left "#[fg=colour16,bg=colour254,bold] #S #[fg=colour247,bg=colour236,nobold] #(curl icanhazip.com) : #[fg=colour252,bg=colour236,bold]#(ifconfig en0 | grep 'inet ' | awk '{print $2}') "
set -g status-right "#(eval tmux-airline `tmux display -p \"#{client_width}\"`)"
set -g status-right-length 150

set -g window-status-format "#[fg=colour244,bg=colour234]#I: #[fg=colour244,nonbold]#W "
set -g window-status-current-format "#[fg=colour253,bg=colour31,bold] #I: #[fg=colour253,bold]#W "

set-window-option -g window-status-fg colour249
set-window-option -g window-status-activity-attr none
set-window-option -g window-status-bell-attr none
set-window-option -g window-status-activity-fg yellow
set-window-option -g window-status-bell-fg red
set -g status-bg colour234
set -g status-left-length 60
set -g status-left "#[fg=colour16,bg=colour254,bold] #S #[fg=colour247,bg=colour236,nobold] #(curl icanhazip.com) : #[fg=colour252,bg=colour236,bold]#(ifconfig en0 | grep 'inet ' | awk '{print $2}') "
set -g status-right "#(eval tmux-airline `tmux display -p \"#{client_width}\"`)"
set -g status-right-length 150

set -g window-status-format "#[fg=colour244,bg=colour234]#I: #[fg=colour244,nonbold]#W "
set -g window-status-current-format "#[fg=colour253,bg=colour31,bold] #I: #[fg=colour253,bold]#W "

set-window-option -g window-status-fg colour249
set-window-option -g window-status-activity-attr none
set-window-option -g window-status-bell-attr none
set-window-option -g window-status-activity-fg yellow
set-window-option -g window-status-bell-fg red
