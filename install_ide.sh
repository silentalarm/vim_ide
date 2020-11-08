#!/usr/bin/env zsh
#./install_ide.sh



if [[ "$1" == "sc" ]]; then
	
	mkdir -p ~/.vim/plugin
	cp req/stdheader.vim ~/.vim/plugin/
	cp req/.vimrc ~/
	cp req/.zshrc ~/
	cp req/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
	cp req/codedark.vim ~/.vim/bundle/vim-colorschemes/colors
	cp req/molokai.vim ~/.vim/bundle/vim-colorschemes/colors

	if [ ! -z "$USER" ]
	then
		echo "USER=`/usr/bin/whoami`" >> ~/.zshrc
		echo "export USER" >> ~/.zshrc
	fi
	source ~/.zshrc
	echo -e "\n\e[92m Установлено! Не забудь прописать \e[37m:PluginInstall\e[92m в .vimrc\n"
	sleep 3
	vim ~/.vimrc

elif [[ "$1" == "hm" ]]; then

	mkdir -p ~/.vim/plugin

	cp req/stdheader.vim ~/.vim/plugin/
	cp req/.vimrc ~/
	cp req/.zshrchome ~/.zshrc
	cp req/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py
	cp req/codedark.vim ~/.vim/bundle/vim-colorschemes/colors
	cp req/molokai.vim ~/.vim/bundle/vim-colorschemes/colors

	if [ ! -z "$USER" ]
	then
		echo "USERNAME=`/usr/bin/whoami`" >> ~/.zshrc
		echo "USER=$2" >> ~/.zshrc
		echo "export USER" >> ~/.zshrc
	fi

	source ~/.zshrc
	echo -e "\n\e[92m Установлено! Не забудь прописать \e[37m:PluginInstall \e[92m в .vimrc\n"
	sleep 3
	vim ~/.vimrc

elif [[ "$1" == "up" ]]; then
	cp req/.vimrc ~/
	echo -e "\n\e[92m Фаил .vimrc обновлен! Не забудь прописать \e[37m:PluginInstall\e[92m в .vimrc\n"
	sleep 3
	vim ~/.vimrc
else
	echo -e "\e[96m\nЧтобы установить используйте команду:\n\n	\e[39m./install_ide.sh \e[96mИ флаги:\n\n	\e[39msc \e[96mдля школьного компьютера\n\n	\e[39mhm <ник в интре> \e[96mдля домашнего компьютера\n\n	\e[39mup \e[96mдля обновления файла .vimrc если уже ставили \e[37m\e[1mvim_ide \e[0m\e[96mи вышел апдейт\n\nПример для установки на школьный компьютер: \e[39m./install_ide.sh sc\n\e[96mПример для установки на домашний компьютер: \e[0m./install_ide.sh hm ctristan\n"
fi
