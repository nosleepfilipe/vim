" vim:et:ts=2:sw=2:fdm=marker
"
" All UTF-8 all the time
scriptencoding utf-8
set encoding=utf-8
set backspace=indent,eol,start
set nocompatible " be iMproved, required
filetype off " required

" The comma is way easier to reach than the backslash, the default <leader>
let mapleader=','

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

Plugin 'scrooloose/nerdcommenter'
" gitgutter
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Raimondi/delimitMate'


Plugin 'terryma/vim-multiple-cursors'

Plugin 'mileszs/ack.vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

" map ff to focus nerdTree
map ff :NERDTreeFocus<CR>
let g:NERDTreeWinSize=30
" set nerd tree to show hidden files
let NERDTreeShowHidden=1

" NERDCommenter
let NERDSpaceDelims=1 "number of spaces to add before comments
map <c-c> <plug>NERDCommenterToggle<cr>
imap <c-c> <esc><plug>NERDCommenterToggle<cr>a

" default theme
let g:airline_theme='deus'

set colorcolumn=80
set number
set nowrap
syntax on

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:ackprg = 'ag --nogroup --nocolor --column'

" Window management
set splitbelow "open new horizontal splits below the current
set splitright "open new veritcal splits to the right of the current

" Tab completion and find files
set wildmode=list:longest,list:full
set wildignore+=.DS_Store,*.pyc,*.scssc,COMMIT_EDITMSG
set wildignore+=*/.git/*,*/node_modules/*
set wildignore+=*/tmp/*
set wildignore+=*/vendor/*
set wildignore+=sass-cache/*,.sass-cache/*,*.scssc
set infercase "ignore case on insert completion

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
set expandtab "expandtab for spaces, noexpandtab for tabs
set smarttab
set autoindent
set smartindent
set shiftround

" access to files in buffer
map <leader>b :CtrlPBuffer<CR>
colorscheme roshambo
