tmux rename-window Explorer
tmux new-window -n Server
tmux send-keys 'rails server' C-m
tmux new-window -n Console 
tmux send-keys 'rails console' C-m
tmux new-window -n Scratch 

