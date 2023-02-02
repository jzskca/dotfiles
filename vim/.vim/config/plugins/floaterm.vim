packadd floaterm

nnoremap <F7> :FloatermToggle scratch<CR>
tnoremap <F7> <C-\><C-N>:FloatermToggle scratch<CR>

let g:floaterm_gitcommit = 'floaterm'
let g:floaterm_autoinsert = 1
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_wintitle = 0

highlight Floaterm guibg=bg guifg=fg
highlight link Floaterm CursorLine
highlight link FloatermBorder CursorLineBg
