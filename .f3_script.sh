#!/bin/bash

tmux select-pane -t 0

tmux send-keys '/#'
tmux send-keys 'Enter'
tmux send-keys 'kVNj'
tmux send-keys '"+y'

tmux select-pane -t 1 
tmux send-keys '%paste'
tmux send-keys 'Enter'

tmux select-pane -t 0
