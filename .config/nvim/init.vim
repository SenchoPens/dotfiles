" source other settings before general settings
let config_dir = expand("~/.config/nvim/")
let config_files = ['plugins.vim', 'automake.vim']
for config_file in config_files
  if filereadable(config_file)
    exec 'source ' . config_file
  endif
endfor

" GENERAL SETTINGS
" Tabs
set tabstop=2
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

" Change between buffers
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>
tnoremap <C-J> <C-\><C-N>:bprev<CR>
tnoremap <C-K> <C-\><C-N>:bnext<CR>

" Change between windows
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-I> <C-W>k
map <C-M> <C-W>j
tnoremap <C-H> <C-\><C-N><C-W>h
tnoremap <C-L> <C-\><C-N><C-W>l
tnoremap <C-I> <C-\><C-N><C-W>k
tnoremap <C-M> <C-\><C-N><C-W>j


" Set ergonomic <leader> key
:let mapleader = ","

