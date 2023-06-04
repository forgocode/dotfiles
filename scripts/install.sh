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
	echo "This is forgocode dotfile install program"
	echo "Start to install dotfile ..."
}

check() {
	#对关联数组的遍历
	for key in ${!config_dir[*]}; do
		echo $key
		str=${config_dir[$key]}
		if (${str: -1} ='\/'); then
			echo "22"
		fi
		if (is_file_or_dir_exist ${config_dir[$key]}); then
			# rm config_dir[$key]
			echo "11"
		fi
	done
}

is_file_exist() {
	if [ -f $1 ]; then
		echo "config: $1 is exist, it will be delete!!!"
		return 1
	else
		echo "config: $1 is not existed，return."
		return 0
	fi
}

is_dir_exist() {
	if [ -d $1 ]; then
		echo "config: $1 is exist, it will be delete!!!"
	else
		echo "config: $1 is not existed，return."
	fi
}

is_file_or_dir_exist() {
	echo $1
	if [ -d "$1" ]; then
		echo "config: $1 is exist, it will be delete!!!"
		return 1
	else
		echo "config: $1 is not existed，return."
		return 2
	fi
}

ln_config() {
	ln -s ../tmux/tmux.conf ~/.tmux.conf
	ln -s ../neovim ~/.config/nvim
	ln -s ../powerlevel10k/p10k.zsh ~/.p10k.zsh
}

print_start
check
