" Required:
set runtimepath+=/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sencho/.local/share/dein/')
  call dein#begin('/home/sencho/.local/share/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('icymind/NeoSolarized')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('neomake/neomake')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('PotatoesMaster/i3-vim-syntax')

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

" Config NerdTree
autocmd vimenter * NERDTree  " autload nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " autoclose nerdtree if it the only one left
autocmd VimEnter * wincmd p  " Not focus on NERDTree window

" Enable glyphs
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set encoding=utf-8
let g:airline_powerline_fonts=1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:airline_left_sep = "\uE0C0"
let g:airline_right_sep = "\uE0D4"
let g:airline_section_b = 'BN: %{bufnr("%")}'
"let g:airline_section_x = '%{strftime("%c")}'
let g:airline_theme='bubblegum'

" Enable solarized
set termguicolors
set background=dark
colorscheme NeoSolarized

