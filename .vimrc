set t_Co=256
syntax on
colorscheme monokai"default minimalist
"colorscheme default

set encoding=utf8
"set background=dark
set number
set tabstop=3
set shiftwidth=3
set ai 
set expandtab
set hlsearch
set incsearch
set ruler
set showcmd
set showmatch
set paste
set nowrap
highlight Comment ctermfg=green
let g:sublimemonokai_term_italic = 1
set laststatus=2
set noshowmode
set noswapfile


filetype off

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dikiaap/minimalist'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

call plug#end()

