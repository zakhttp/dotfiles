" Start pathogen
execute pathogen#infect()
" Display line numbers
set number
" Set syntax on
syntax on
filetype plugin indent on
" Indent settings
:set expandtab
:set tabstop=2
:set shiftwidth=2
:retab
" Atcual line and column highlighting
" :set cuc

" Soft line wrap couln color

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" javascript-libraries-syntax: used libraries
let g:used_javascript_libs = 'jquery,angularjs,angularui,react,underscore,backbone'

"Close Vim if the only window left open is NT
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NT automaticcaly when vim opens
" autocmd vimenter * NERDTree

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" NerdTree
" ---------
" Toggle NerdTree 
map <C-n> : NERDTreeToggle<CR>"  Previous tab
nnoremap tp :tabprev<CR>
" Next tab
nnoremap tn :tabnext<CR>
" First tab
nnoremap tf :tabfirst<CR>
" Last tab
nnoremap tl :tablast<CR>
" Close tab
 map <leader>tc :tabclose<CR>
" New tab
map <leader>tn :tabnew<CR>
" Move tab
map <leader>tm :tabmove<CR>


" MRU
" ----
" Toggle MRU
map <C-m> : MRU<CR>

" FuzzyFinder
" -----------
" File mode
nnoremap ff :FufFile<CR>
" Directory mode
nnoremap fd :FufDir<CR>

" Syntastic
" ---------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Checkers enabled
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['phplint']
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_checkers = ['weblint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_json_checkers = ['jsonlint']

" Display aggregate errors form all checkers
" let g:syntastic_aggregate_errors = 1

" Key mapping for erros naviguation
nnoremap ln :lnext<CR>
nnoremap lp :lprev<CR>
nnoremap lw :lwindow<CR>

" Airline
" -------
set laststatus=2
" Airline theme
:let g:airline_theme='solarized'
:let g:airline_powerline_fonts = 1

" JsDoc
" -----
map <C-j> :JsDoc<CR>

" Nerd-tree-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Markdown preview
let g:instant_markdown_slow = 1
