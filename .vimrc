" Vim plug stuff
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" Other stuff
colorscheme dracula
set number
