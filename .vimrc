" Necesary  for lots of cool vim things
set nocompatible

" Enable 256-bit color mode
set t_Co=256
let g:rehash256 = 1

" Syntax highlighting
syntax on

" Improve indents
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" This shows what you are typing as a command.
set showcmd

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Show line numbers
set number
highlight LineNr ctermfg=Grey

" Incremental searching is sexy
set incsearch

" Set off the other paren
highlight MatchParen ctermbg=4
" }}}

" Turn off annoying error bells
set noerrorbells
set visualbell
set t_vb=

" Dracula theme settings
packadd! dracula
syntax enable
colorscheme dracula

" Molokai theme settings
" colors molokai
" set background=dark

" Map ctrl-j to switch pane
map <C-j> <C-w><C-w>
