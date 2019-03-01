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
packadd vim-surround

syntax enable
set background=dark
colorscheme solarized

" formatting
set ai
set encoding=UTF-8
set et
set ff=unix
set sts=4
set sw=4
set tw=80

" functionality
set hidden
set tildeop

" plugins

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" commentary
autocmd FileType php setlocal commentstring=#\ %s

" gitgutter
set updatetime=100
nmap <F6> :GitGutterLineHighlightsToggle

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F7> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" solarized
let g:solarized_hitrail=1

" tagbar
nmap <F8> :TagbarToggle<CR>
