" Start pathogen
execute pathogen#infect()

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

" visual
colorscheme ron   " Color blind friendly
highlight Normal ctermbg=black
set background=dark
set t_Co=256
set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE
set number

" Neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
