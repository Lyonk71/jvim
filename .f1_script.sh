  
#!/bin/bash

tmux select-pane -t 1
tmux send-keys C-c
tmux send-keys 'exit()'
tmux send-keys 'Enter'
sleep .25

tmux send-keys 'ipython3 --TerminalInteractiveShell.editing_mode=vi'
tmux send-keys 'Enter'
tmux send-keys 'clear'
tmux send-keys 'Enter'

tmux select-pane -t 0
