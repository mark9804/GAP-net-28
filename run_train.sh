IS_PROCESS_RUNNING=$(tmux ls | grep -c "gap-net")
if [ $IS_PROCESS_RUNNING -gt 0 ]; then
    tmux attach -t gap-net
else
    tmux new -s gap-net "uv run Spectral_SCI/GAPnet_v1/main.py"
fi