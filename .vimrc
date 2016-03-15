" pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" max line length
let g:pymode_options_max_line_length = 79

" pymode on
let g:pymode = 1

" color scheme
colorscheme zenburn

" show a visual line under the cursor's current line
set cursorline

" rope goto diff file, open new tab
let g:pymode_rope_goto_definition_cmd = 'e'

" syntastic default settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" resolve syntastic / pymode conflict
let g:syntastic_mode_map = {
    "mode": "active",
    "active_filetypes": [],
    "passive_filetypes": [python] }
