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
Plug 'valloric/youcompleteme'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'yggdroot/indentline'
call plug#end()

"======================= Config themes ======================= 
" use 256 colors in terminal
"if !has("gui_running")
    "set t_Co=256
    "set term=screen-256color
"endif 
colorscheme gruvbox
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
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


"======================= C++ HIGHLIGHT ======================= 
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"======================= CTRL P ======================= 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"======================= YOU COMPLETEME ======================= 
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
map <leader>[ :YcmCompleter GoTo<cr>
let g:ycm_add_preview_to_completeopt = 1
set splitbelow
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_min_num_identifier_candidate_chars = 1
let g:ycm_error_symbol = 'X'
let g:ycm_warning_symbol = '>>'
"======================= CTAGS ======================= 
"map <C-[> <C-t>
map <leader>[ :po<CR>
map <leader>] <C-]>
"======================= TARBAR =======================
map <leader>b :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
"======================= INDENTLINE ======================= 
let g:indentLine_color_term = 200
let g:indentLine_bgcolor_term = 202
map <leader>i :IndentLinesToggle<CR>

"======================= TABS =======================  
map <leader>q :tabprevious<CR>
map <leader>e :tabnext<CR>
map <leader>w :tabclose<CR>
map <leader>r :tabnew<CR>

