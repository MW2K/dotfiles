source $HOME/.config/nvim/themes/fogbell.vim
let mapleader="\\"

set termguicolors
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set laststatus=2
set number
set cursorline
set clipboard=unnamedplus
set ignorecase
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoindent
set spell!
set spelllang=en_au
set formatoptions-=cro

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
Plug 'morhetz/gruvbox'
call plug#end()

