set nocompatible                        " Vi compatibility is not important
set mouse=a                             " Mouses are useful too

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" indentation
set autoindent
set tabstop=4 shiftwidth=4 expandtab

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugin

" Set make line length to 100 for flake
let g:flake8_max_line_length=100

" Make taglist to F8 for now
nnoremap <silent> <F8> :TlistToggle<CR>

" visual
colorscheme ron   " Color blind friendly
highlight Normal ctermbg=black
set background=dark
set t_Co=256
set cursorline
hi CursorColumn   cterm=NONE ctermbg=234 ctermfg=NONE
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=236 ctermfg=NONE
set colorcolumn=120
highlight ColorColumn ctermbg=22
set number

setlocal spell spelllang=en_us          " Enable spelling
" Setting a background red color for misspelled words, while at the same time
" having highlighting, is a colorblind disaster waiting to happen. So underline
" on spelling issues instead, set a black BG and contrasting FG
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=LightYellow ctermbg=Black
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=LightYellow ctermbg=Black
hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=LightYellow ctermbg=Black
hi clear SpellRare
hi SpellRare cterm=underline ctermfg=LightYellow ctermbg=Black

highlight Pmenu ctermbg=33 ctermfg=0
highlight PmenuSel ctermbg=21 ctermfg=15

call plug#begin('~/.vim/plugged')
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
