" Pre-load settings
let g:ale_completion_enabled = 1

" Load plugins
packadd ale
packadd ctrlp
packadd editorconfig-vim
packadd nerdtree
packadd solarized
packadd tagbar
packadd typescript-vim
packadd vim-airline
packadd vim-airline-themes
packadd vim-commentary
packadd vim-devicons
packadd vim-fugitive
packadd vim-gutentags
packadd vim-jinja2
packadd vim-jsx-pretty
packadd vim-terraform
packadd vim-surround

syntax enable
set background=dark
colorscheme solarized

" formatting
set ai
set encoding=UTF-8
set et
set ff=unix
set fo=tcqr
set sts=4
set sw=4
set ts=8
set tw=80

" options
"set cindent
set hidden
set ignorecase " see smartcase below
set incsearch
set mouse=a
set number
set smartcase
set tildeop
set wildignore=.git,__pycache__,htmlcov,node_modules

" Enable filetype plugins
filetype plugin on

" plugins

"{{{ airline

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

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

"}}} airline end

" ale
nmap <C-\> :ALEFindReferences<CR>
nmap <F2> :ALEFix<CR>
nmap <F3> :ALEDetail<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" commentary
autocmd FileType php setlocal commentstring=#\ %s
autocmd FileType yaml setlocal commentstring=#\ %s

" ctrlp
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v/(\.git|__pycache__|htmlcov|node_modules)$',
    \ }
let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard']

" gitgutter
set updatetime=100
nmap <F6> :GitGutterLineHighlightsToggle<CR>

" gutentags
let g:gutentags_ctags_tagfile = '.tags'

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F7> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeRespectWildIgnore=1

" solarized
let g:solarized_hitrail=1

" tagbar
nmap <F8> :TagbarToggle<CR>


" etc

" search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <CR> :nohlsearch<CR><CR>
