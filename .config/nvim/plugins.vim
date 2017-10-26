" Required:
set runtimepath+=/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sencho/.local/share/dein/')
  call dein#begin('/home/sencho/.local/share/dein/')

  " Required:
  call dein#add('/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim') 
 
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('roxma/nvim-completion-manager')

  call dein#add('icymind/NeoSolarized')
  call dein#add('kassio/neoterm')
  call dein#add('w0rp/ale')

  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')

  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('PotatoesMaster/i3-vim-syntax')
  call dein#add('severin-lemaignan/vim-minimap')
  call dein#add('suan/vim-instant-markdown')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')

  call dein#add('eagletmt/neco-ghc')
 
  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" Recache runtimepath
call dein#recache_runtimepath()
"End dein Scripts-------------------------

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

" ALE
let g:ale_fixers = {
\   'python': ['isort'],
\}

let g:ale_fix_on_save = 1

" NerdTree
autocmd vimenter * NERDTree  " autload nerdtree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " autoclose nerdtree if it the only one left
" This will enable NERDTree to show hidden files
let NERDTreeShowHidden=1

" FZF
nnoremap <leader>ls :Buffers<CR>
nnoremap <leader>f :Files<CR>

