""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" transparency
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:toggle_transparence()
  if &transparency == 200
    set transparency=0
  else
    set transparency=200
  endif
endfunction
nnoremap <silent> <Space>oT :<C-u>call <SID>toggle_transparence()<CR>
