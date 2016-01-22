#!/usr/bin/env bash
#Update
sudo pacman -Syu --noconfirm

#Config setup
cp -r /vagrant/configs/. ~/
ln -s /vagrant/projects ~/projects

#Software for development:
sudo pacman -S cmake vim tmux zsh rust git cargo go docker \
    zip unzip texlive-core pandoc pandoc-citeproc sqlite jdk8-openjdk \
    --noconfirm

#Go setup
mkdir $HOME/projects
mkdir $HOME/projects/go
export GOPATH=$HOME/projects/go
export GOPATH=$GOPATH/bin
export PATH=$PATH:$GOBIN

go get github.com/yaccio/orchid/orchid github.com/nsf/gocode github.com/rogpeppe/godef github.com/bradfitz/goimports

#AUR Packages:
sudo pacman -S --needed base-devel --noconfirm
wget https://aur.archlinux.org/cgit/aur.git/snapshot/aura-bin.tar.gz
tar -xvf aura-bin.tar.gz
cd aura-bin 
makepkg -sri --noconfirm
sudo aura -A rust-src --noconfirm

#VIM Setup:
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/rust-lang/rust.vim.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/easymotion/vim-easymotion.git
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/vim-pandoc/vim-pandoc.git
git clone https://github.com/vim-pandoc/vim-pandoc-syntax.git
git clone https://github.com/derekwyatt/vim-scala.git
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive 
sudo pacman -S mono nodejs npm --noconfirm
gpg --keyserver keyserver.ubuntu.com --recv-keys 0FC3042E345AD05D
python2 install.py --clang-completer --omnisharp-completer --gocode-completer \
        --tern-completer --racer-completer
