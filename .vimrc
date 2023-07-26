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

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
