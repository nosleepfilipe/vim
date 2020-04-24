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

Plugin 'junegunn/vim-easy-align'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'mileszs/ack.vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" copy path
Plugin 'mortonfox/nerdtree-clip'

" jsx
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'tpope/vim-fugitive'

Plugin 'luochen1990/rainbow'

" machine learning
Plugin 'zxqfl/tabnine-vim'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'

Plugin 'typescript-vim'

call vundle#end()
filetype plugin indent on

let g:rainbow_active = 1
" NERDTree
map <Leader>n :NERDTreeToggle<CR>
" map ff to focus nerdTree
map ff :NERDTreeFind<CR>
let g:NERDTreeWinSize=80
" set nerd tree to show hidden files
let NERDTreeShowHidden=1
" auto hide nerdtree after open file
" auto close when open a file
let NERDTreeQuitOnOpen=1
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

" augroup fugitive_status
  " autocmd!
  " autocmd user Fugitive set statusline=%<\ %f\ %{fugitive#statusline()} ...
" augroup END

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Enable the mouse in terminal Vim (if supported)
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" with this config you need to press ctrl+f to choose the snippet
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" with this config you just press tab to choose snippet
" and you use the keyboard cursors to go to the next option
" YCM + Snippets
"UltiSnips"{

"comment
" function! g:UltiSnips_Complete()
    " call UltiSnips#ExpandSnippet()
    " if g:ulti_expand_res == 0
        " if pumvisible()
            " return "\<c-n>"
        " else
            " call UltiSnips#JumpForwards()
            " if g:ulti_jump_forwards_res == 0
               " return "\<tab>"
            " endif
        " endif
    " endif
    " return ""
" endfunction
" autocmd BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <c-r>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"


let g:ackprg = 'ag --nogroup --nocolor --column'


" Visual Mode Blockwise Indent
" This keeps the current visual block selection active after changing indent
" with '<' or '>'. Usually the visual block selection is lost after you shift
" it, which is incredibly annoying.
" http://vim.wikia.com/wiki/Short_mappings_for_common_tasks
vmap > >gv
vmap < <gv

" Vim 7.3 and newer can persist undo history across sessions
if v:version >= 703
  set undofile
  set undodir=~/.vim/tmp
endif

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

" show special characters 
" set listchars=nbsp:☠,tab:▸␣
set listchars=tab:\▸\ ,trail:·,eol:¶
map <Leader>i :set invlist<CR>:exe ":echo 'toggling invisibles'"<CR>

set clipboard=unnamed "yanks and pastes use the clipboard instead

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
set guifont=Monaco:h20
