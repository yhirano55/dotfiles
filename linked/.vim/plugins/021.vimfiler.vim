""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimfiler
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_asdefault_explorer=1
" セーフモードを無効にした状態で起動
let g:vimfiler_safe_mode_by_default=0
" 現在開いているバッファのディレクトリを開く
nnoremap <Space>fe :<C-u>VimFilerBufferDir -quit<CR>
" 現在開いているバッファをIDE風に開く
nnoremap <Space>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

" デフォルトのキーマッピングを変更
augroup vimrc
  au FileType vimfiler call s:vimfiler_my_settings()
augroup END
function! s:vimfiler_my_settings()
  nmap <buffer> q <Plug>(vimfiler_exit)
  nmap <buffer> Q <Plug>(vimfiler_hide)
endfunction
