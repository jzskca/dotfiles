packadd nerdtree

autocmd StdinReadPre * let s:std_in = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeRespectWildIgnore = 1

nnoremap <expr> <Leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
nnoremap <Leader>N :NERDTreeFind<CR>
