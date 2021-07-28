#!/bin/bash

tmux select-pane -t 0

tmux send-keys '"+y'
tmux send-keys 'Enter'

tmux select-pane -t 1 
tmux send-keys '%paste'
tmux send-keys 'Enter'

tmux select-pane -t 0

