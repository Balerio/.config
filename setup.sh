
# TMUX SETTINGS
touch ~/.tmux.conf
grep -qxF 'source ~/.config/.tmux.conf' ~/.tmux.conf || echo 'source ~/.config/.tmux.conf' >> ~/.tmux.conf
touch ~/.bashrc
grep -qxF 'source ~/.config/.bashrc' ~/.bashrc || echo 'source ~/.config/.bashrc' >> ~/.bashrc
touch ~/.vimrc
grep -qxF 'source ~/.config/.vimrc' ~/.vimrc || echo 'source ~/.config/.vimrc' >> ~/.vimrc

