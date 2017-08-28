" source plugin settings before general settings
let config_dir = expand("~/.config/nvim/")
let plugins_file = config_dir . 'plugins.vim'
if filereadable(plugins_file)
  exec 'source ' . plugins_file
endif

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

filetype plugin on
filetype indent on
set so=10

" Set to auto read when a file is changed from the outside
set autoread
syntax enable

" Make Y behave like other capitals
:map Y y$

