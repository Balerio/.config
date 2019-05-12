
# TMUX SETTINGS
touch ~/.tmux.conf
grep -qxF 'source ~/.config/.tmux.conf' ~/.tmux.conf || echo 'source ~/.config/.tmux.conf' >> ~/.tmux.conf

