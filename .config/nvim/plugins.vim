" Required:
set runtimepath+=/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/sencho/.local/share/dein/')
  call dein#begin('/home/sencho/.local/share/dein/')

  " Required:
  call dein#add('/home/sencho/.local/share/dein/repos/github.com/Shougo/dein.vim') 
 
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('eagletmt/neco-ghc')  " Completer for Haskell
  call dein#add('fatih/vim-go')
  "call dein#add('eagletmt/ghcmod-vim')  " It's overhead for me
  call dein#add('parsonsmatt/intero-neovim')  " Fork of ghcmod-vim for neovim
  call dein#add('metakirby5/codi.vim')  " Interactive scratchpad
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('octol/vim-cpp-enhanced-highlight')

  call dein#add('icymind/NeoSolarized')
  call dein#add('kassio/neoterm')
  call dein#add('w0rp/ale')
  "call dein#add('Shougo/vimproc.vim')

  "call dein#add('scrooloose/nerdtree')          " Don't need 'em anymore
  "call dein#add('xuyuanp/nerdtree-git-plugin')  " They slow startup time
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('scrooloose/nerdcommenter')

  call dein#add('airblade/vim-gitgutter')
  call dein#add('severin-lemaignan/vim-minimap')

  call dein#add('suan/vim-instant-markdown')  " Markdown preview
  call dein#add('lervag/vimtex')

  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')

  call dein#add('PotatoesMaster/i3-vim-syntax')
  call dein#add('rust-lang/rust.vim')
  " call dein#add('alx741/vim-hindent')  " Does it even work?

  " NCM2
  call dein#add('ncm2/ncm2')  " Like deoplete, but better
  call dein#add('roxma/nvim-yarp') " ncm2 requires nvim-yarp
  call dein#add('ncm2/ncm2-pyclang') " C/C++ support
  call dein#add('ncm2/ncm2-jedi') " Python support
 
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
let g:airline_theme = 'bubblegum'
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
\   'md': ['proselint'],
\   'js': ['eslint'],
\   'haskell': ['hfmt', 'remove_trailing_lines', 'trim_whitespace'],
\   'python': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['gofmt', 'remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_linters = {
\   'cpp': ['clangtidy', 'cppcheck', 'cpplint', 'clang-format'],
\   'haskell': ['ghc-mod', 'stack-ghc-mod', 'hlint', 'hdevtools'],
\   'javascript': [],
\   'python': ['pylint'],
\   'vim': [],
\}
"\   'rust': ['rustc'],

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)

let g:ale_sign_column_always = 1

" Intero
let g:intero_start_immediately = 0

" NerdTree
"autocmd vimenter * NERDTree  " autload nerdtree
"autocmd vimenter * wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " autoclose nerdtree if it the only one left
"" This will enable NERDTree to show hidden files
"let NERDTreeShowHidden=1

" FZF
nnoremap <leader>ls :Buffers<CR>
nnoremap <leader>f :Files<CR>

" Gitgutter
let g:gitgutter_override_sign_column_highlight = 0

" Markdown Preview
let g:instant_markdown_autostart = 1

" NCM2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c

" vimtex
let g:vimtex_compiler_progname = 'nvr'  " requires installing 'neovim-remote' (from pip3 or repo)

" vim.cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
