.PHONY:
test:
	echo "1111"

.PHONY:
ohmyzshInstall:
	echo "ohmyzsh"
	ln -s ~/dotfiles/oh-my-zsh/zshrc ~/.zshrc
	source ~/.zshrc
	proxy
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

.PHONY:
tmuxInstall:
	echo "tmux"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
	tmux source-file ~/.tmux.conf

.PHONY:
neovimInstall:
	echo "neovim"

.PHONY:
dotfiles: ohmyzshInstall tmuxInstall neovimInstall


