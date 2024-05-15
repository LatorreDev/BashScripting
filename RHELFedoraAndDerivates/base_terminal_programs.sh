#!/bin/env bash
# Base programs 
sudo dnf install kitty tmux neovim curl git zsh neofetch btop shellcheck -y

if [ "$0" = "bash" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
echo "alias vim=nvim" >> ~/.zshrc && \
source ~/.zshrc && \
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
mkdir ~/.config/nvim && \
touch ~/.config/nvim/init.vim && \
git clone https://github.com/LatorreDev/MyVimConfig.git ~/vimconfig && \
cat ~/vimconfig/vimrc > ~/.config/nvim/init.vim && \
nvim ~/.config/nvim/init.vim

