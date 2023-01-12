" Vim plug stuff
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/indentpython'
Plug 'vim-syntastic/syntastic'

call plug#end()

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Global stuff
colorscheme dracula
syntax on
let mapleader=" "

" Clipboard
set clipboard=unnamed

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Mouse handling
set mouse=a

" File format
set fileformat=unix
set encoding=utf-8

" Line numbers
set number

" Ensure lines are not longer thant 80 characters
set textwidth=79

" Better tab experience
map <leader>tn :tabnew<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

" Better split experience
set splitbelow
set splitright
map <C-k> <C-W><C-J>
map <C-i> <C-W><C-K>
map <C-l> <C-W><C-L>
map <C-j> <C-W><C-H>

" Better terminal experience
map <C-t> :terminal<cr>i
tnoremap <Esc> <C-\><C-n>

" Ctrl + P to Fuzzy File Finder
map <C-p> :FZF<cr>

" Python stuff
let python_highlight_all=1
let g:python3_host_prog = '/home/lucas/.pyenv/versions/vim/bin/python3'
