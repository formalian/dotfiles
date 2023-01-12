" Vim plug stuff
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" Other stuff
colorscheme dracula
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set number

" Better tab experience
map <leader>tn :tabnew<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

" Ctrl + P
map <C-p> :FZF<cr>
