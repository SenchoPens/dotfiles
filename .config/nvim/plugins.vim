" Required:
set runtimepath+=/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sencho/.local/share/dein/')
  call dein#begin('/home/sencho/.local/share/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim') 
  " Add or remove your plugins here:
  "
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('icymind/NeoSolarized')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('neomake/neomake')
  call dein#add('kassio/neoterm')

  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')

  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('PotatoesMaster/i3-vim-syntax')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Load deoplete
call deoplete#enable()

" Enable glyphs
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set encoding=utf-8

" Icons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" Airline
let g:airline_powerline_fonts=1
let g:airline_section_z = '%{strftime("%c")}'
let g:airline_theme='bubblegum'
let g:airline_skip_empty_sections = 1

let g:airline#extensions#tabline#enabled = 1

" Enable solarized
set termguicolors
set background=dark
colorscheme NeoSolarized

" Neoterm
let g:neoterm_direct_open_repl = 1
let g:neoterm_keep_term_open = 0

" Neomake
autocmd BufAdd * Neomake
autocmd! BufWritePost * Neomake
let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202',  '--format=default'],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ }
let g:neomake_python_enabled_makers = ['flake8']

" NerdTree
autocmd vimenter * NERDTree  " autload nerdtree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " autoclose nerdtree if it the only one left

