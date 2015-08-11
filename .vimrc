syntax on
colorscheme darkblue
set autoindent
set number
set incsearch
set showmode
set showmatch
set showcmd
set wrap
set title
set list
set listchars=tab:>-,trail:-,eol:\
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=2

" search
set wrapscan
set ignorecase
" /search=>case insensitive /Search=>case sensitive
set smartcase
set hlsearch

"
set wildmenu
set wildmode=list:full

" swap / backup file
set nobackup
set noswapfile

set mouse=a
set ttymouse=xterm2

" show statusline(filename)
set laststatus=2

" ===========================
" Neobungle
" ===========================
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required
call neobundle#begin(expand('~/.vim/bundle/'))
call neobundle#end()

