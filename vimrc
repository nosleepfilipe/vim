" vim:et:ts=2:sw=2:fdm=marker
"
" All UTF-8 all the time
"scriptencoding utf-8
"set encoding=utf-8
"set backspace=indent,eol,start



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'

" nerd tree 
Bundle 'scrooloose/nerdtree'

" ctrl + p to open files
" Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
call vundle#end()
filetype plugin indent on

" map nerdTree
map <C-n> :NERDTreeToggle<CR>
" map ff to go to nerdTree
map ff :NERDTreeToggle<CR>

" set nerd tree to show hidden files
let NERDTreeShowHidden=1
