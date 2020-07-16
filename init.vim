call plug#begin()
Plug 'iCyMind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/simpylfold'
Plug 'scrooloose/syntastic'
call plug#end()

set encoding=utf-8
set fileformat=unix
set fileformats=unix,dos
colorscheme NeoSolarized

set showcmd
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
" uppercase word
inoremap <c-u> <esc>viwUea
nnoremap zuz <Plug>(FastFoldUpdate)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <silent> <C-Right> :bnext<cr>
nnoremap <silent> <C-Left> :previous<cr>

nnoremap <silent> <C-Up> :cnext<cr>
nnoremap <silent> <C-Down> :cprevious<cr>

command! ClearWhitespaces %s/^\s\+$//e | %s/\s\+$//e
command! JsonPrettify %!python -m json.tool

set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType netrw setl bufhidden=delete
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType toml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setl ts=4 sts=4 sw=4 tw=80 et ai ff=unix
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType markdown setlocal wrap linebreak nolist

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_preview = 1
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,__pycache__,\.git'

let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:SimpylFold_docstring_preview = 1

let g:AutoPairsFlyMode=0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'

let g:javascript_plugin_jsdoc = 1

