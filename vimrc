" Start pathogen
execute pathogen#infect()

set nocompatible                        " Vi compatibility is not important
set mouse=a                             " Mouses are useful too
setlocal spell spelllang=en_us          " Enable spelling

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256
set number
colorscheme slate   " Color blind friendly

" code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "don't fold by default
set foldlevel=1         "this is just what i use

" indentation
set autoindent
set tabstop=4 shiftwidth=4 expandtab

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugin

" Set make line length to 100 for flake
let g:flake8_max_line_length=100
