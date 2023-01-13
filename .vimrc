" Vim plug stuff
call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-sensible'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
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

" You Complete Me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']

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
