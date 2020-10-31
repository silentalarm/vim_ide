#!/bin/zsh
# ./copy_files.sh


if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> ~/.zshrc
    echo "export USER" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

cp req/stdheader.vim ~/.vim/plugin/
cp req/.vimrc ~/
cp req/.zshrc ~/
cp req/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
cp req/codedark.vim ~/.vim/bundle/vim-colorschemes/colors
cp req/molokai.vim ~/.vim/bundle/vim-colorschemes/colors

source ~/.zshrc

