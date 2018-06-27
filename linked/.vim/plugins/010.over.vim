""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" over.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" over.vimの起動
nnoremap <silent> <Space>oc :OverCommandLine<CR>
" カーソル下の単語をハイライト付きで置換
nnoremap <Space>o* :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
" コピーした文字列をハイライト付きで置換
nnoremap <Space>op y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>
