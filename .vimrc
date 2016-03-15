" pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" pymode on
let g:pymode = 1

" color scheme
colorscheme zenburn

" show a visual line under the cursor's current line
set cursorline
set cursorcolumn

" tab sizes
setlocal tabstop=4 shiftwidth=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4
set expandtab

" rope goto diff file, open new tab
let g:pymode_rope_goto_definition_cmd = 'e'
