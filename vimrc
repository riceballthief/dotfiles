"==============================
"==Vundle settings start here==
"==============================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')

"Bundle 'altercation/vim-colors-solarized'

Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
 
Plugin 'scrooloose/nerdtree'
" plugin from https://github.com/scrooloose/nerdtree

Plugin 'bling/vim-airline'
" plugin from https://github.com/bling/vim-airline

Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"=======================
"==settings start here==
"=======================
syntax on
set nu "set line numbers on
set background=dark
colorscheme solarized 
set smartindent "automatically intent after curly brackets
set tabstop=2 "this sets the tab to be 4 spaces
set shiftwidth=2
set expandtab
set incsearch "file automatically jumps to match as I type
nmap <C-n> :NERDTreeToggle<CR> 
autocmd vimenter * NERDTree "auto open NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "close vim if only thing left is nerdtree
set backspace=2 "makes backspace work like most other apps 
:set term=builtin_ansi "this is to correct the left/right arrow key fuck ups that sometimes happen

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                     
nmap <silent> <c-l> :wincmd l<CR>