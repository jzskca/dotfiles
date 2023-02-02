packadd ale

let g:ale_sign_warning = '⦿'
let g:ale_sign_error = '⦿'

nnoremap <Leader>a [ale-p]
nnoremap [ale-p]d :ALEGoToDefinition<CR>
nnoremap [ale-p]m :ALEDetail<CR>
nnoremap [ale-p]r :ALERename<CR>
nnoremap [ale-p]u :ALEFindReferences<CR>
nnoremap [ale-p]x :ALEFix<CR>

nnoremap <silent> <M-K> <Plug>(ale_previous_wrap)
nnoremap <silent> <M-J> <Plug>(ale_next_wrap)
