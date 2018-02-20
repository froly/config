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
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
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



