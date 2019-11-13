set shell=/bin/bash
if has("syntax")
  syntax on
endif

set background=dark

if has("autocmd")
  filetype plugin indent on
endif

set smartcase
set incsearch
set hidden

set ch=1

"using backspace as x
set backspace=indent,eol,start whichwrap+=<,>,[,]
set ai
set tabstop=4
set shiftwidth=4
set softtabstop=4
"replace tab with spaces
set expandtab
set linebreak
set dy=lastline
colorscheme darkblue
filetype on
filetype plugin on
set smarttab
set nobackup
set noswapfile
"disable toolbar
set guioptions-=T

map <C-c> "+y
map <C-x> "+x
"map <C-b> "+gP

set nocompatible
filetype off
set path=.,**
set relativenumber

"set Esc action to Tab
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

syntax on
set path=.,**
set autoindent
map <c-k> :find 
map <c-l> :buffers<CR>:b
nnoremap <F5> :buffers<CR>:buffer<Space>
colorscheme zellner
set number
map <Space>h ^
map <Space>l $
nmap q ciW
nmap K 5k
nmap J 5j
nmap H 15h
nmap L 15l
vnoremap K 5k
vnoremap J 5j
vnoremap H 15h
vnoremap L 15l
set hlsearch
nmap <Tab> :nohl<Enter>
nnoremap U <C-r>
"highlight trailing whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red
"set list
"match ErrorMsg '\s\+$'
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

"highlight trailing whitespace
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
nmap <leader>l :set list!<CR>
nmap <space>; mzA;<Esc>`z

"jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"positioning
nmap <space> <nop>
noremap <space>u zbkj
noremap <space>d ztkj
noremap <space><space> zz

"highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=234
hi CursorLineNr cterm=bold ctermfg=226
hi Comment ctermfg=120
hi Search ctermfg=3

"for px4 development
"set noet ci pi sts=0 sw=4 ts=4
"toggle tabs to spaces
"retab

"build options
map <c-e> :tselect<CR>
map <c-b> :make<CR>
map <c-n> :cn<CR>
map <c-p> :cp<CR>
map <c-m> :clist<CR>

"show filename
set ls=2

"examine call stack
cs a cscope.out
nmap <c-f> :cs find c <c-r><c-w><CR>
"have to find antother way
"nmap <c-w> :cs find s <c-r><c-w><CR>

"hlsearch color
hi Search ctermbg=DarkGrey

"https://github.com/itchyny/lightline.vim
"https://github.com/tpope/vim-fugitive
"https://github.com/majutsushi/tagbar
"https://github.com/scrooloose/nerdtree.git
"https://github.com/vim-airline/vim-airline
"runtimepath for plugins
set runtimepath+=~/.vim_runtime

"NERDTree
nmap <F9> :NERDTreeToggle<CR>
"tagbar
map <F10> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 40

"ale
"let g:ale_completion_enabled = 1

"airline
let g:airline#extensions#tabline#enabled = 1
""show just the filename
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme = 'alduin'
""let g:airline_powerline_fonts = 1

"let g:lightline = {
"      \ 'colorscheme': 'seoul256',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head'
"      \ },
"      \ }

set noshowmode

