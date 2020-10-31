"custom vim - IDE
"git - https://github.com/s1lentalarm/vimrc/
" voprosi? - Telegram @nan_deska Slack - ctristan

set number "show string id
set tabstop=4 "spaces in one tab
set shiftwidth=4 "spaces on new line
set backspace=indent,eol,start "used for highlighting and deleting through backspace [<::x::]
syntax on "syntax highlighting
set t_Co=256 "for corret colors
set encoding=utf-8 
set cul

set mouse=a "mouse scrolling
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
"copy = ctrl + c
vmap <C-c> "+y

"Tree for use Ctrl + N
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"nice cursor
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible              " be iMp

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
":PluginInstall for install plugins :PluginUpdate - for update

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "github
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"snippetse core and configs
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
"tree CTRL + N
Plugin 'preservim/nerdtree'
"memory leak
Plugin 'tklengyel/valgrind'
Plugin 'inside/vim-search-pulse'
"hightlighting varible on your cursor
Plugin 'RRethy/vim-illuminate'
"cool airline
Plugin 'vim-airline/vim-airline'
"code color themes 
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'dunstontc/vim-vscode-theme'
Plugin 'vim-airline/vim-airline-themes'
"syntax checking and semantic errors
Plugin 'dense-analysis/ale'
"fast finder filse CTRL + P
Plugin 'kien/ctrlp.vim'
"TAB to use CTRL + Y for close
Plugin 'ycm-core/YouCompleteMe'
"refactoring (core and other)
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-tags'
Plugin 'LucHermitte/lh-dev'
Plugin 'LucHermitte/lh-style'
Plugin 'LucHermitte/lh-brackets'
Plugin 'LucHermitte/vim-refactor'
"hightlighting code 
"Plugin 'jeaye/color_coded'
call vundle#end()
filetype plugin indent on

"refactor Ctrl + X, V - for varible 
let b:usemarks         = 0
let b:cb_jump_on_close = 1

"let g:color_coded_enabled = 1
"let g:color_coded_filetypes = ['c', 'cs', 'cpp', 'objc']

let g:ycm_language_server = 
  \ [ 
  \   {
  \     'name': 'yaml',
  \     'cmdline': [ '/path/to/yaml/server/yaml-language-server', '--stdio' ],
  \     'filetypes': [ 'yaml' ]
  \   },
  \   {
  \     'name': 'rust',
  \     'cmdline': [ 'ra_lsp_server' ],
  \     'filetypes': [ 'rust' ],
  \     'project_root_files': [ 'Cargo.toml' ]
  \   },
  \   {
  \     'name': 'godot',
  \     'filetypes': [ 'gdscript' ],
  \     'port': 6008,
  \     'project_root_files': [ 'project.godot' ]
  \    }
  \ ]

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:ycm_key_list_stop_completion = ['<C-y>']

let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsExpandTrigger = '<C-l>l'
let g:UltiSnipsJumpForwardTrigger = '<C-g>'
let g:UltiSnipsJumpBackwardTrigger = '<C-t>'

"color theme :colorscheme in vim for preview
colorscheme molokai "codedark
let g:airline_theme = 'molokai'

