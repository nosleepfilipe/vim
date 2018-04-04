" vim:et:ts=2:sw=2:fdm=marker
"
" All UTF-8 all the time
scriptencoding utf-8
set encoding=utf-8
set backspace=indent,eol,start
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" nerd tree, files changes
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'


" ctrl + p to open files
Plugin 'ctrlpvim/ctrlp.vim'

" youcompleteme
Plugin 'Valloric/YouCompleteMe'

" coffeescript
Plugin 'kchmck/vim-coffee-script'


" gitgutter
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Raimondi/delimitMate'


Plugin 'terryma/vim-multiple-cursors'

Plugin 'mileszs/ack.vim'



call vundle#end()
filetype plugin indent on

" map ff to focus nerdTree
map ff :NERDTreeFocus<CR>
let g:NERDTreeWinSize=30
" set nerd tree to show hidden files
let NERDTreeShowHidden=1

" default theme
let g:airline_theme='deus'

set colorcolumn=80
set number
set nowrap
syntax on


set directory=~/.vim/tmp "where to put swap files
set backupdir=~/.vim/backup "where to put backups
set viewdir=~/.vim/view
set autoread "re-read files when they're changed externally

set showmatch "show matching brackets

set clipboard+=unnamed "yanks and pastes use the clipboard instead

" Tabs and spacing
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent


colorscheme roshambo
