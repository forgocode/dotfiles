FROM ubuntu:latest
RUN apt-get update -y && apt-get install software-properties-common -y && add-apt-repository ppa:neovim-ppa/unstable && apt-get update -y && apt-get install neovim -y && \
apt-get install ranger -y && apt-get install -y zsh && apt-get install -y fd-musl  && apt-get install ripgrep && apt install -y tmux

#RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

