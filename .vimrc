" Vim plug stuff
call plug#begin()

" Theme
Plug 'ayu-theme/ayu-vim'

" Development
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'

" Interface
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Theming
set termguicolors
let ayucolor="dark"
let g:ayu_extended_palette = 1
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

" Enable syntax
syntax on

" Change leader key to <space>
let mapleader=" "

" Enable plugin, ident and filetype
filetype plugin indent on

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

" Ensure lines are not longer than 100 characters
set textwidth=100

" Better tab experience
map <leader>tn :tabnew<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

" Better split experience
set splitbelow
set splitright
map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <C-l> <C-W><C-L>
map <C-h> <C-W><C-H>

" Better terminal experience
map <C-t> :terminal<cr>i
tnoremap <Esc> <C-\><C-n>

" Ctrl + P to Fuzzy File Finder
map <C-p> :FZF<cr>

" NerdTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Python stuff
let g:python3_host_prog = '/home/lucas/.pyenv/versions/vim/bin/python3'

" IndentLine
let g:indentLine_setColors = 1
let g:indentLine_setConceal = 0

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Accept coc selection with <cr>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
