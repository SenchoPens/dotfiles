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

set tabstop=4
set shiftwidth=4
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

" Do not continue comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Language indentation settings
autocmd FileType go setlocal tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

function ReplaceHyperledger()
    '<,'>s/a folder/директория/g
    '<,'>s/to include/, чтобы хранить/g

    '<,'>s/a file/файл/g
    '<,'>s/ file / файл /g

    '<,'>s/root CA's certificate/корневой CA-сертификат/g
    '<,'>s/system channel's genesis block/genesis-блок системного канала/g

    '<,'>s/(optional)/(опционально)/g
    '<,'>s/(Optional)/(Опционально)/g
    '<,'>s/each corresponding/, каждый из которых соотвествует/g

    '<,'>s/to configure/для настройки/g

    '<,'>s/for the peer/для пира/g
    '<,'>s/for the orderer/для orderer'a/g

    '<,'>s/An identity should be classified as/Identity должна быть классифицирована как/g
    '<,'>s/if it/, если он/g

    '<,'>s/needs to contain/должен содержать/g

    '<,'>s/you can find/вы можете найти/g
    '<,'>s/You can find/Вы можете найти/g

    '<,'>s/Notice that/Заметьте, что/g
    '<,'>s/is missing/отсутствует/g
    '<,'>s/than the/, то тогда/g

    '<,'>s/an example/пример/g

    '<,'>s/ administrator / администратор /g
    '<,'>s/ admin / администратор /g

    '<,'>s/ Instead, / Вместо этого, /g

    '<,'>s/ ledger / реестр /g

    '<,'>s/ reconfiguration / перенастройка /g

    '<,'>s/ peers / пиры /g
    '<,'>s/ peer / пир /g

    '<,'>s/ certificate / сертификат /g
    '<,'>s/ Certificate / сертификат /g
    '<,'>s/ cert / сертификат /g

    '<,'>s/ intermediate / промежуточный /g
    '<,'>s/ authenticate / аутентифицировать /g
    '<,'>s/ clients / клиенты /g
    '<,'>s/ client / клиент /g
    '<,'>s/ organization / организация /g
    '<,'>s/ limited / ограниченный /g
    '<,'>s/ requirement / требование /g
    '<,'>s/ execute / выполня /g
    '<,'>s/ execution / выполнение /g
    '<,'>s/ component / компонент /g
    '<,'>s/ implementation / реализация /g
    '<,'>s/ given / данный /g
    '<,'>s/ classification / классификация /g

    '<,'>s/организацияal unit/organizational unit/g

    '<,'>s/ when / когда /g
endfunction

" Do not close the buffer when changing them
set hid

" Wildmenu
set wildmenu
set wildmode=longest:list,full

" C++
" Path for searching for files, opened by 'gf' command (for headers)
let &path.="src/include,/usr/include/AL,"
