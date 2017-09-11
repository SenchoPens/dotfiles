" If some kind of C/C++ file is opened, check for Makefile and:
" - if file is present, bind F5 to make
" - if file is absent, bind F5 to "make without Makefile"
" In any case, if compilation wasn't successful, error list will be displayed
"http://habrahabr.ru/blogs/vim/40369/

function! BindF5_C()
  if filereadable("Makefile")
    set makeprg=make
    map <f5>      :w<cr>:make<cr>:cw<cr>
    imap <f5> <esc>:w<cr>:make<cr>:cw<cr>
  else
    map <f5>      :w<cr>:make %:r<cr>:cw<cr>
    imap <f5> <esc>:w<cr>:make %:r<cr>:cw<cr>
  endif
endfunction

au FileType c,cc,cpp,h,hpp,s call BindF5_C()

function! BindF9_C()
  if filereadable("Makefile")
    set makeprg=make
    map <f9>      :w<cr>:make<cr>:cw<cr>:!./%<<cr>
    imap <f9> <esc>:w<cr>:make<cr>:cw<cr>:!./%<<cr>
  else
    map <f9>      :w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
    imap <f9> <esc>:w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
  endif
endfunction

au FileType c,cc,cpp,h,hpp,s call BindF9_C()

"function! BindF5_Py()
  "map 

