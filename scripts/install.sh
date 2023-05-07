#!/bin/bash
User="GgoCoder"
Repo="dotfiles"
Proxy=""

welcome()
{
	echo "welcome to GgoCoder install.sh"
	echo "start to install   ..."
}

proxy()
{
    export all_proxy=$Proxy
}

unproxy()
{
    unset all_proxy
}

installNeovim()
{
	ln -s ~/dotfiles/neovim ~/.config/nvim
}

installTmux()
{
    echo "start to download Tmux conf"
    # 检查zshrc是否存在
	rm ~/.tmux.conf
    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
	echo "download tmux conf end"
}

installOhmyzsh()
{
    echo "start to download on-my-zsh conf"
	rm ~/.zshrc
    ln -s ~/dotfiles/oh-my-zsh/zshrc ~/.zshrc
	source ~/.zshrc
	echo "download on-my-zsh conf end"
}

installPacker()
{
    echo "download packer"
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
}


welcome
echo $User "$Repo"

installTmux
installOhmyzsh
installPacker
installNeovim
