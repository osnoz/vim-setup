syntax on
set clipboard=unnamed
set number
set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'

" syntastic default settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" colors
colorscheme solarized

" encoding
set expandtab

" indentation
filetype plugin indent on
set expandtab
setlocal tabstop=4 shiftwidth=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=2

