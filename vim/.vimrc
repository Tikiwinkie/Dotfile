"VIM CONFIG"

set nocompatible
let mapleader = "\<Space>"

filetype plugin indent on
syntax on
set encoding=utf-8

set wildmenu
set wildmode=longest:full,full
set laststatus=2

set splitright
set splitbelow

" Plugins "
call plug#begin('~/.vim/plugged')
Plug 'romkatv/powerlevel10k'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Mapping "
"Move between splits"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Normal mode"
nmap <leader>n :NERDTreeTabsToggle<CR>
nnoremap ; :
"Move between tabs"
map <leader>l :tabnext<CR>
map <leader>h :tabprev<CR>

"Insert mode"
inoremap jk <ESC>
inoremap kj <ESC>

"Visual mode"
vnoremap ; :

"Highlighting trailing spaces"
highlight ExtraWhitespace term=reverse ctermbg=196
au BufNewFile,BufRead * :match ExtraWhitespace /\s\+$/
:set listchars=tab:▸\ ,eol:¬,trail:·

"NERDTree options"
let g:NERDChristmasTree=1
let g:NERDTressAutoDeleteBuffer=1
let g:NERDTreeChDirMode=2
let g:NERDTreeDirArrows=0
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
autocmd vimenter * if !argc() | let g:nerdtree_tabs_open_on_console_startup=1 | endif
nmap <F6> :NERDTreeToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"DelimiMate options"
let delimitMade_expand_cr = 2
let delimitMate_expand_space = 2

"Syntastic options"
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
