""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set statusline+=%{fugitive#statusline()}
" git statusを表示
nnoremap <Space>gs :<C-u>Gstatus<CR>
" 現在開いているソースをgit add
nnoremap <Space>ga :<C-u>Gwrite<CR>
" git commit
nnoremap <Space>gc :<C-u>Gcommit<CR>
" 現在のソースの変更点をvimdiffで表示
nnoremap <Space>gd :<C-u>Gdiff<CR>
" git log
nnoremap <Space>gl :<C-u>Glog<CR>
" git blame
nnoremap <Space>gb :<C-u>Gblame<CR>
