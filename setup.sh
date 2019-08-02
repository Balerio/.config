
sudo apt update
sudo apt -y install git 

# TMUX SETTINGS
touch ~/.tmux.conf
grep -qxF 'source ~/.config/.tmux.conf' ~/.tmux.conf || echo 'source ~/.config/.tmux.conf' >> ~/.tmux.conf
touch ~/.bashrc
grep -qxF 'source ~/.config/.bashrc' ~/.bashrc || echo 'source ~/.config/.bashrc' >> ~/.bashrc
touch ~/.vimrc
grep -qxF 'source ~/.config/.vimrc' ~/.vimrc || echo 'source ~/.config/.vimrc' >> ~/.vimrc

sudo apt -y install vim tmux python ranger  
# sudo pacman -Syyu
# sudo pacman -S --noconfirm vim tmux git python go

# git clone https://aur.archlinux.org/yay.git ~/.yayinstall
# cd ~/.yayinstall
# makepkg -si
# rm -R ~/.yayinstall
