#!/bin/bash

# install my environment
git clone https://github.com/bgcarvalho/config ~/config

# Z Shell
sudo apt install zsh
echo "source ~/config/zsh/zshrc" > ~/.zshrc

# oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/config/zsh/ohmyzsh
#cp ~/config/zsh/themes/cobalt2_1.zsh-theme ~/.oh-my-zsh/themes/cobalt2.zsh-theme

# more themes
git clone https://github.com/denysdovhan/spaceship-prompt.git "~/config/zsh/ohmyzsh/custom/themes/spaceship-prompt"
ln -s "~/config/zsh/ohmyzsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "~/config/zsh/ohmyzsh/custom/themes/spaceship.zsh-theme"
#git clone https://github.com/zsh-users/zsh-completions "~/config/zsh/ohmyzsh/custom/plugins/zsh-completions"

# Terminal Multiplexer
sudo apt install tmux

# TMUX CONF
#cp ~/config/tmux/tmux.conf ~/.tmux.conf
echo "source ~/config/tmux/tmux.conf" > ~/.tmux.conf

# TPM - TMUX PLUGIN MANAGER
git clone https://github.com/tmux-plugins/tpm ~/config/tmux/plugins/tpm

# VIM
echo "source ~/config/vim/vimrc" > ~/.vimrc

# NeoVIM
sudo apt-get install neovim

echo "source ~/config/nvim/init.vim" > ~/.config/nvim/init.vim

# powerline
#cp ~/config/powerline/tmux.json ~/.config/powerline/tmux.json

# ranger
echo "source ~/config/ranger/rc.conf" > ~/.config/ranger/rc.conf