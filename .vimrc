syntax on
set tabstop=2
set mouse=r
set shiftwidth=2
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o
set hlsearch
color desert
filetype plugin indent on
set nofixendofline
set paste

au BufRead,BufNewFile *.nasm set filetype=nasm
au BufRead,BufNewFile *.md setlocal textwidth=120
