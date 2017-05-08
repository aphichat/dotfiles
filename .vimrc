" Author: Aphichat Panjamanee <panjamanee@gmail.com>
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
" Launch vim and run :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set autoindent

" Wrapping code to 80 cols
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Map <leader> to ,
let mapleader = ','

" Styling
set fillchars+=vert:\ 
highlight VertSplit ctermfg=255
highlight SignColumn ctermbg=NONE
set laststatus=2

colorscheme molokai
let g:molokai_original=1
let g:rehash256=1
set background=dark

" View relative line number
set relativenumber

" Show column numbers
set ruler

" Use tabs 2 spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight search results
set hlsearch

" Disable search wrapping
set nowrapscan

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

" Map controlP to leader P
let g:ctrlp_map='<leader>p'

" also search in dotfiles
let g:ctrlp_show_hidden=0

" Helpers
map <Leader>gw :!git add . && git commit -m 'WIP' && git push<cr>

" Statusbar toggler
hi StatusLine cterm=NONE ctermbg=149 ctermfg=black

if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=198
  au InsertLeave * hi StatusLine term=reverse ctermfg=black ctermbg=149
endif

