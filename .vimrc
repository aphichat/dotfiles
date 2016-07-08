" Author:  Aphichat Panjamanee <panjamanee@gmail.com>
"
" If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Vundle
" See the :h vundle Vimdoc for more details.
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set autoindent

" Wrapping code to 80 cols
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Styling
set fillchars+=vert:\ 
highlight VertSplit ctermfg=255
highlight SignColumn ctermbg=NONE
set laststatus=2

" View relative line number
set relativenumber
" set number

" Show column numbers
set ruler

" Use tabs 2 spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight search results
set hlsearch

" No swap files, use version control instead
set noswapfile

" Arrows keys are unacceptable
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>

