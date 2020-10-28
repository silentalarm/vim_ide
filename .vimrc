
set number
set tabstop=4
set shiftwidth=4

set cul

set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
"copy ctrl + c
vmap <C-c> "+y

"tab - dervo s leva))
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible              " be iMproved, required
"filetype off                  " required

"color tema


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
":PluginInstall

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "github
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'  
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'preservim/nerdtree'
Plugin 'OmniSharp/omnisharp-vim'

Plugin 'inside/vim-search-pulse'
Plugin 'RRethy/vim-illuminate'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasiser/vim-code-dark'
"Plugin 'jeaye/color_coded'
Plugin 'dunstontc/vim-vscode-theme'
Plugin 'dense-analysis/ale'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'

Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-tags'
Plugin 'LucHermitte/lh-dev'
Plugin 'LucHermitte/lh-style'
Plugin 'LucHermitte/lh-brackets'
Plugin 'LucHermitte/vim-refactor'

call vundle#end()            " required
filetype plugin indent on    " required

"refactor
let b:usemarks         = 0
let b:cb_jump_on_close = 1

"omnisharp
"inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
"\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

let g:color_coded_filetypes = ['cs', 'cpp', 'objc']

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_force_refresh_on_context_changed = 1

nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
nnoremap <C-o><C-r> :!dotnet run

"let g:OmniSharp_popup_mappings = {
"\ 'sigNext': '<C-n>',
"\ 'sigPrev': '<C-p>',
"\ 'lineDown': ['<C-e>', 'j'],
"\ 'lineUp': ['<C-y>', 'k']
"\}

let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

let g:OmniSharp_popup_options = {
\ 'winblend': 30,
\ 'winhl': 'Normal:Normal'
\}
let g:syntastic_cs_checkers = ['code_checker']
let g:OmniSharp_highlight_groups = {
\ 'Comment': 'NonText',
\ 'ClassName': 'csClassType',
\ 'LocalName': 'csUnicodeNumber',
\ 'NamespaceName': 'csClassType',
\ 'DelegateName': 'csClassType',
\ 'FieldName': 'csUnicodeNumber',
\ 'EnumName': 'csUnicodeNumber',
\ 'PropertyName': 'csUnicodeNumber',
\ 'ModuleName': 'csClassType',
\ 'XmlDocCommentName': 'Identifier',
\ 'XmlDocCommentText': 'NonText'
\}

let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0010': {'type': 'I'},
\ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
\ 'CS8019': {'type': 'None'},
\ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
\}

set backspace=indent,eol,start

syntax on
set t_Co=256

set encoding=utf-8


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


let g:ycm_key_list_stop_completion = ['<C-y>']

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2

let g:OmniSharp_want_snippet = 1
let g:OmniSharp_highlighting = 1 " 1 if u use dotnet
let g:OmniSharp_start_without_solution = 1 " 1 too see up

let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsExpandTrigger = '<C-l>l'
let g:UltiSnipsJumpForwardTrigger = '<C-g>'
let g:UltiSnipsJumpBackwardTrigger = '<C-t>'

colorscheme codedark
let g:airline_theme = 'codedark'



