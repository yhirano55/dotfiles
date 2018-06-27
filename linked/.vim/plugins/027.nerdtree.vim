" 隠しファイルを表示する
let g:NERDTreeShowHidden=1

" カーソルラインをハイライト
let g:NERDTreeHighlightCursorline=1

" 表示しないファイル
let g:NERDTreeIgnore=['.DS_Store', '\.clean$', '\.swp$', '\.bak$', '\~$']

" NERDTreeを使いやすく
nnoremap <silent><C-e> :NERDTreeToggle<CR>
