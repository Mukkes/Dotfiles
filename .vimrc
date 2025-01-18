" Set compatiblity off. When on vim behaves more like vi.
set nocp

" Syntax highlighting
syntax on

" No error sounds.
set belloff=all

" Line numbers.
set nu

" Relative line numbers.
set rnu

" Keep 10 lines below and above the cursor
set scrolloff=10

" Search case insensitive
" set ignorecase

" Search only case senesitive when use uppercase letters
set smartcase

" Show next match while searching
set incsearch

" Use spaces instead of tabs
set expandtab

" Tab size/number of spaces for tab.
set tabstop=4

" Number of spaces for indentation. (<< and >>)
set shiftwidth=4

" Warp on whole words
set wrap
set linebreak

" Fix backspace
set backspace=indent,eol,start

" Info about linenumber.
set ruler

" Handy menu when using tab for autocompleting commands in command mode.
set wildmenu

" Indentation
set autoindent
set smartindent
set cindent

" Set default language
set langmenu=en_US
let $LANG = 'en_US'

" Set colorscheme
if has('termguicolors')
    set termguicolors
endif

" Map { to typ both { }, align them en enter input mode inside.
" :inoremap { <esc>o{<cr>}<esc>O
