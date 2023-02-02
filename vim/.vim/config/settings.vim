" Formatting
set autoindent
set encoding=UTF-8
set expandtab
set fileformat=unix
set formatoptions=tcqr
set shiftwidth=4
set softtabstop=4
set textwidth=80

" Options
filetype plugin on
set conceallevel=3 " Wanted by NERDTree
set hidden
set ignorecase " See smartcase below
set incsearch
set list
set listchars=extends:…,precedes:…,tab:··→,trail:·
set mouse=a
set number
set relativenumber
set scrolloff=8
set sidescrolloff=8
set smartcase
set spell
set spelllang=en_ca
set tildeop
set wildignore=.git,__pycache__,htmlcov,node_modules
syntax enable

" Colours
set background=dark
colorscheme solarized8_flat
set t_Co=16 " Correct colours with `solarized8` when running in a terminal
