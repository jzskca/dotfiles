let b:ale_fixers = ['isort', 'black']
let b:ale_linters = ['pylsp']

" XXX black and isort are probably useless here since:
" - ALE won't use pylsp as a fixer
" - neither operates as a linter
let b:ale_python_pylsp_config = {
    \   'pylsp': {
    \       'plugins': {
    \           'black': {
    \               'cache_config': v:true,
    \               'enabled': v:true,
    \           },
    \           'isort': {
    \               'enabled': v:true,
    \           },
    \           'pycodestyle': {
    \               'enabled': v:false,
    \           },
    \           'pylint': {
    \               'enabled': v:true,
    \           },
    \       }
    \   }
    \}
