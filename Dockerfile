FROM ubuntu:latest
WORKDIR /root
RUN apt-get update -y && apt-get install software-properties-common -y && add-apt-repository ppa:neovim-ppa/unstable && apt-get update -y && apt-get install neovim -y && apt-get install -y fd-find  && apt-get install ripgrep -y && apt install -y tmux && apt-get install git -y

RUN get https://go.dev/dl/go1.14.7.linux-amd64.tar.gz && tar -zxvf https://go.dev/dl/go1.14.7.linux-amd64.tar.gz

RUN git clone https://github.com/forgocode/dotfiles.git 
RUN bash 
#RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

