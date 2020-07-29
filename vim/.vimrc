" Load plugins
packadd editorconfig-vim
packadd nerdtree
packadd solarized
packadd tagbar
packadd vim-airline
packadd vim-airline-themes
packadd vim-commentary
packadd vim-devicons
packadd vim-fugitive
packadd vim-gutentags
packadd vim-jsx-pretty
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
set mouse=a
set number
set smartcase
set tildeop

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


" commentary
autocmd FileType php setlocal commentstring=#\ %s
autocmd FileType yaml setlocal commentstring=#\ %s

" search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <CR> :nohlsearch<CR><CR>

" gitgutter
set updatetime=100
nmap <F6> :GitGutterLineHighlightsToggle<CR>

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F7> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" solarized
let g:solarized_hitrail=1

" tagbar
nmap <F8> :TagbarToggle<CR>
