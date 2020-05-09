set clipboard+=unnamedplus 
set encoding=utf-8
set mouse=a
set number
set wrap
set linebreak
set tgc 
set nocompatible
filetype plugin on
syntax on
set background=dark
colorscheme wal

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('/home/peter/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'chrisbra/Colorizer'

:
call plug#end()
