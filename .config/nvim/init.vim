" Set ergonomic <leader> key
:let mapleader = ","

" Change between buffers
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>

" Change between windows
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-I> <C-W>k
map <C-M> <C-W>j
tnoremap <ESC> <C-\><C-n>
autocmd BufWinEnter,WinEnter term://* startinsert
"autocmd BufLeave term://* stopinsert

" source other settings before general settings
let config_dir = expand("~/.config/nvim/")
let config_files = ['plugins.vim', 'automake.vim']
for config_file in config_files
  let fullpath = config_dir . config_file
  if filereadable(fullpath)
    exec 'source ' . fullpath
  endif
endfor

" GENERAL SETTINGS
" This will enable the usage of your mouse inside Vim
set mouse=a

" This option speeds up macro execution in Vim
" I have drawing defects because of it
"set lazyredraw

" This will enable Vim's spell checking feature
set spell spelllang=en,ru

" This will make Vim start searching the moment you start
" typing the first letter of your search keyword
set incsearch
" This will make Vim highlight all search results that
" matched the search keyword
set hlsearch

" Tabs set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

" Folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Line numbers - absolute on cursor line and relative on other
set relativenumber
set number
" This will highlight the current line your cursor is at
set cursorline
" This will highlight the current column your cursor is at
set cursorcolumn

" Autowrite on disk on buffer switching, exit, etc
set autowrite

filetype plugin on
filetype indent on
set so=10

" Set to auto read when a file is changed from the outside
set autoread
syntax enable

" Make Y behave like other capitals
map Y y$

