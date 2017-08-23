"======================= Plugins ======================= 
call plug#begin('~/.vim/plugged')
" Themes for color making :))
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Themes for coding
Plug 'octol/vim-cpp-enhanced-highlight'
" Tools
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"======================= Config themes ======================= 
colorscheme gruvbox
set termguicolors
"let ayucolor="light"
"let ayucolor="mirage"
"let ayucolor="dark"
set background=dark
syntax on

" Mouse
if has('mouse')
  set mouse=a
endif

set nu "number
set relativenumber
set clipboard=unnamedplus
set autoread
set autowrite
set autoindent
set si "smart indent

"======================= No temp file ======================= 
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" Map leader key
let mapleader = "," " map leader key to ,
let g:mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>
" Map Esc to jj
:imap jj <Esc>
" Hide highlight
map <silent> <leader><cr> :nh<cr>
" Install Plugins
map <leader>pi :PlugInstall<cr>

map <leader>s :source %<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

map <C-n> :NERDTreeToggle<CR>

"======================= C++ HIGHLIGHT ======================= 
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"======================= CTRL P ======================= 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
