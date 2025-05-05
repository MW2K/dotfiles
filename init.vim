source $HOME/.config/nvim/themes/seti.vim
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
set shiftwidth=2
set softtabstop=2
set tabstop=4
set smartindent
set autoindent
set spell!
set spelllang=en_au
set formatoptions-=cro

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

" nim stuff
let s:nimlspexecutable = "nimlsp"
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('/tmp/vim-lsp.log')
" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('/tmp/asyncomplete.log')

let g:asyncomplete_auto_popup = 0

if has('win32')
   let s:nimlspexecutable = "nimlsp.cmd"
   " Windows has no /tmp directory, but has $TEMP environment variable
   let g:lsp_log_file = expand('$TEMP/vim-lsp.log')
   let g:asyncomplete_log_file = expand('$TEMP/asyncomplete.log')
endif
if executable(s:nimlspexecutable)
   au User lsp_setup call lsp#register_server({
   \ 'name': 'nimlsp',
   \ 'cmd': {server_info->[s:nimlspexecutable]},
   \ 'whitelist': ['nim'],
   \ })
endif

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" plugin start
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/Colorizer'
Plug 'morhetz/gruvbox'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

