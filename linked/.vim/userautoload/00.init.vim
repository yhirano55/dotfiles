""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.vimrc.local'))
  execute 'source' expand('~/.vimrc.local')
endif

" augroup init
augroup vimrc
  au!
augroup END

command! -bang -nargs=* MyAutocmd au<bang> vimrc <args>
