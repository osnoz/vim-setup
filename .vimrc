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
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

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
set encoding=utf-8

" indentation
filetype plugin indent on
set expandtab
setlocal tabstop=4 shiftwidth=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=2

" searching
set hlsearch
set incsearch

" highlight whitespace
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=orange

" highlight row and column
set cursorline
set cursorcolumn

" text width
set colorcolumn=80
set textwidth=79

" dir tree panel
map <A-Space> <plug>NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_open_on_gui_startup = 0

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" syntastic, dont open split (error list)
let g:syntastic_auto_loc_list = 0

" filetype associations
augroup filetype
    au! BufRead,BufnewFile *suite*.rc* set filetype=cylc
augroup END
