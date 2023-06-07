# **********************************************************
# * Author           : forgocode
# * Email            : forgocode@163.com
# * Github           : https://github.com/forgocode
# * Create Time      : 2023-06-03 18:24
# * FileName         : scripts/install.sh
# * Description      :
# **********************************************************

#关联数组
declare -A config_dir

config_dir["neovim"]="/root/.config/nvim/"
config_dir["tmux"]="/root/.tmux.conf"
config_dir["oh-my-zsh"]="/root/.zshrc"

print_start() {
	echo "This is forgocode dotfile install program."
	echo "Start to install dotfile ..."
}

check() {
	#对关联数组的遍历
	for key in ${!config_dir[*]}; do
		str=${config_dir[$key]}
		print_is_file_or_dir_exist ${config_dir[$key]}
	done
}

print_is_file_or_dir_exist() {
	if [ -d $1 ]; then
		echo "config dir: $1 is exist, it will be delete!!!"
		return 1
	elif [ -f $1 ];then
		echo "config file: $1 is exist, it will be delete!!!"
		return 1
	else
		echo "config: $1 is not existed, return."
	fi
	return 0
}

ln_config() {
	ln -s ../tmux/tmux.conf ~/.tmux.conf
	ln -s ../neovim ~/.config/nvim
	ln -s ../powerlevel10k/p10k.zsh ~/.p10k.zsh
	ln -s ../oh-my-zsh/zshrc ~/.zshrc
}

rm_config_path ()
{
	rm ~/.zshrc
	rm ~/.p10k.zsh
	rm ~/.tmux.conf
	rm -rf ~/.config/nvim
}

download_nvim_config()
{

}

download_tmux_config ()
{
	tmux source-file ~/.tmux.conf
}


download_omz_config ()
{
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	source ~/.zshrc
}

print_start
check
# rm_config_path

