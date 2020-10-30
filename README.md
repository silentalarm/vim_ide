# Кастомный .vimrc с кучей удобных плагинов
![Demo CountPages alpha](https://d.radikal.ru/d17/2010/03/1b475f23664e.png)
Содержание
==========

+ [About](#About)

+ [FAQ](#Faq)

+ [Примеры](#Prim)

+ [Установка](#Install)

+ [Ссылки на все плагины](#Plugs)

+ [Контакты](#Kont)







##### <a name="About"></a>
About
=====

Привет! Я собрал много полезных вещей в одном месте чтобы вы могли кодить в своем любимом виме также удобно как и в любой IDE.
Список плагинов буде обновлятся, поскольку помимо C  впереди и другие языки, соответственно конфиг будет для каждого свой.
Возможно вам будет чтот то лишнее из того что я собрал, или вы захотете добавить что то еще, и это хорошо! Ведь нет идеально удобного решения сразу для всех, но я думаю вас заинтересует то, что тут представленно и вы возьмете хотябы часть для себя, а может и все :)
Возможно вы можете порекомендовать плагин которого тут нет, но вы им пользуетесь и считаете, что он достоин внимания плиз пишите в Телеграм  @nan_deska или в Slack ctristan,  Спасибо!

Установка потребует терпения но результат стоит того!

##### <a name="Faq"></a>
FAQ
===

Теперь можно крутить колесик мышки чтобы перемещатся по коду!

Для авто-заполнения из всплывающего списка используйте:
      
    Tab
      
Бывают моменты когда для выполнения нормы нам нужно в int'овой функции поставить два таба ном нам будет мешать авто-заполнение для этого есть сочетание клавиш:

    CTRL + Y
      
При использовании этих клваиш авто-заполнение выключится чтобы вы смогли использовать Tab для выравнивания.

Чтобы скопировать теперь можно просто выделить что либо и нажать:

    CTRL + C
      
Для удаления выделите то что хотите удалить и нажмите:

    BACKSPACE
      
Для быстрого поиска по файлам в системе используйте:

    CTRL + P
     
Для того чтобы открыть дерево проекта нажмите:
      
    CTRL + N

Для рефакторинга переменной используйте:

    CTRL + X и сразу V (без нажатого контрола)

Более подробнее как менять что то еще кроме переменных можете загуглить плагин vim-refactor
Для быстрой вставки готовыйх конструкций введите имя конструкции и нажмите

    CTRL + L и сразу L (без нажатого контрола)
  
Конструкции можно менять, чтобы поменять введите в терминал:
      
    vim ~/.vim/bundle/vim-snippets/UltiSnips/c.snippets


##### <a name="Prim"></a>
Примеры
=======

   Можно вставлять сразу готовые конструкции:
   
![Demo CountPages alpha](https://j.gifs.com/5QYQAK.gif)

   Происходит проверка на ошибки, ранее используемые имена(например имена переменных чтобы не печатать просто нажимаем Tab),
при открытии скобки, кавычки, фигурной скобки появляются закрывающие:

![Demo CountPages alpha](https://j.gifs.com/r8O8g4.gif)

   Рефакторинг:
    
![Demo CountPages alpha](https://j.gifs.com/AN4NWP.gif)

   Дерево проекта для быстрого переключения между файлами:
   
![Demo CountPages alpha](https://j.gifs.com/5QYQ1K.gif)

И многие другие мелочи которые упростят работу!))

##### <a name="Install"></a>

Установка
=========

Хоть это и безопасно и нет ничего, что нельзя изменить, но на всякий случай: Автор не несет никакой ответственности за ваши действия, все что вы делаете - на свой страх и риск))

Начнем!

Для начала тебе потребуется homebrew на личный компьютер используйте эту команду:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

Если вы устанавливаете на компьютер школы то эту:

    curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

После установки homebrew нужно ввести в терминал:
   
    brew install vim cmake go

Эти пакеты необходимы для распаковки и корректной работы плагинов. 
Так ну с homebrew мы разобрались, теперь приступим к установке плагинов для вима, начнем с самого главного - Vundle, просто пропишите это в терминал:

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Как только установите Vundle зайдите в папку репозитории моей сборки и используйте эту команду в терминале:

    ./copy_files.sh

Затем :
    
    vim ~/.vimrc

(могут быть ошибки при входе в вим т.к. плагины не установлены просто жмем энтр)

И установите плагины находясь в открытом .vimrc этой командой:

    :PluginInstall
    
Ждите, установка займет какоето время, не стоит пугатся если установка стоит долго на одном плагине это норм))
Как только увидите в низу с лева заветное слово Done! нажмите q, после чего выйдете с вима.

Теперь нужно распаковать YouCompleteMe, для этого воспользуйтесь этими командами:
    
        cd ~/.vim/bundle/YouCompleteMe
        
        python3 install.py --all
 
Установите хеадер 42 даже если вы устанавливаете на школьный компьютер, лично я устанавливал этот (следуйте гайду по установке) - https://github.com/42Paris/42header

Установите oh-my-zsh используя команду в терминале:

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   
При установке oh-my-zsh меняется конфиг .zshrc поэтому нужно снова зайти в папку с моей сборкой и выполнить команду в терминале:

        ./copy_files.sh
   
Готово!
Осталось перезайти в терминал и наслаждатся удобным вимом :)


##### <a name="Plugs"></a>

Плагины
=======


https://github.com/VundleVim/Vundle.vim

https://github.com/tpope/vim-fugitive

https://github.com/MarcWeber/vim-addon-mw-utils

https://github.com/tomtom/tlib_vim

https://github.com/garbas/vim-snipmate

https://github.com/honza/vim-snippets

https://github.com/SirVer/ultisnips

https://github.com/preservim/nerdtree

https://github.com/tklengyel/valgrind

https://github.com/inside/vim-search-pulse

https://github.com/RRethy/vim-illuminate

https://github.com/vim-airline/vim-airline

https://github.com/flazz/vim-colorschemes

https://github.com/tomasiser/vim-code-dark

https://github.com/dunstontc/vim-vscode-theme

https://github.com/vim-airline/vim-airline-themes

https://github.com/dense-analysis/ale

https://github.com/kien/ctrlp.vim

https://github.com/ycm-core/YouCompleteMe

https://github.com/LucHermitte/vim-refactor

https://github.com/jeaye/color_coded



##### <a name="Kont"></a>

Контакты
========

Если возникли вопросы или что то пошло не так пишите - мой ник в Intra42 как и в Slack: ctristan, Telegram @nan_deska
                                                                                             
