let mapleader ="\\"

set mouse=a
set number
set nocompatible
syntax on
set encoding=utf-8
filetype plugin on
set linebreak
set wrap
set clipboard=unnamedplus
set hlsearch
set ignorecase
set termguicolors 

map <leader>s :setlocal spell! spelllang=en_au

let g:airline_powerline_fonts = 1
let g:netrw_banner = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/Colorizer'
call plug#end()

