#!/bin/zsh
# ./install_h.sh


mkdir -p ~/.vim/plugin

cp req/stdheader.vim ~/.vim/plugin/
cp req/.vimrc ~/
cp req/.zshrchome ~/.zshrc
cp req/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
cp req/codedark.vim ~/.vim/bundle/vim-colorschemes/colors
cp req/molokai.vim ~/.vim/bundle/vim-colorschemes/colors

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> ~/.zshrc
    echo "export USER" >> ~/.zshrc
fi

source ~/.zshrc

