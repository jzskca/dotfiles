let mapleader = ' '

" Allow gf to open nonexistent files
nnoremap gf :edit <cfile><CR>
xnoremap gf :edit <cfile><CR>

" Paste replace visual selection without copying it
vnoremap <Leader>p "_dP

" Make Y behave like other capitals
nnoremap Y y$

" Keep it centred
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open the current file in the default program
nnoremap <Leader>x !xdg-open %<CR><CR>

" Search highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Convenient window commands
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Down> <C-W><Down>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-J> <C-W>-
nnoremap <C-K> <C-W>+

" Convenient buffer commands
nnoremap <M-Left> :bp<CR>
nnoremap <M-Right> :bn<CR>
