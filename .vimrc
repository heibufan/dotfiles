filetype plugin indent on
let nocompatible              
filetype off     
set rtp+=C:\Users\cinep\.vim\bundle\Vundle.vim
syntax on
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/christoomey/vim-titlecase.git'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Bundle 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-indent'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'szw/vim-g.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'wahidrahim/resize-font'
"Bundle 'christoomey/vim-quicklink'
"Bundle 'mattn/webapi-vim'

"https://github.com/tpope/vim-surround/issues/117
"Plugin 'https://github.com/tpope/vim-surround.git'
"Plugin 'vim-colorstepper/plugin/colorstepper.vim'
call vundle#end()

let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

set background=light
color 256-grayvim
let fortran_have_tabs=1
set belloff=all
set guicursor+=n:blinkon0
set number relativenumber
set nu rnu
set numberwidth=5
set textwidth=180
set colorcolumn=+1
set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=16
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set showcmd
set winwidth=110
set clipboard=unnamed
command! W :w

noremap j gj
noremap k gk

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <CR> : nohlsearch<cr>

nnoremap <leader>\vt :vsplit terminal<cr>
nnoremap <leader>\t :terminal<cr>

" performance execution
set lazyredraw

" text rendering option
set linebreak
set backspace=indent, eol, start
"set spell
set bs=2

" file management
set confirm
set noswapfile

au BufRead, BufNewFile *.py set expandtab

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"solution for python whitespace high. problem url
"https://stackoverflow.com/questions/47578780/how-to-stop-vim-highlighting-trailing-whitespace-in-python-files

if exists('python_highlight_all')
    unlet python_highlight_all
endif
if exists('python_space_error_highlight')
    unlet python_space_error_highlight
endif

"line of code commented in python.vim
"syn match   pythonSpaceError	display excludenl "\s\+$"

"playing with macro
"@3 create templace for visual division between sections of code; functions, import, __main__
"https://sanctum.geek.nz/arabesque/advanced-vim-macros/
let @3="i#######################################################################################################################################################################################"

let @ 7="iwhat the fuck is taht shi€kb€kb€kb€kb€kb€kb€kbhat shit man ():"

"function! CalculateAge()
"    normal iallo toi
"endfunction

"let @a="iallo toi"
