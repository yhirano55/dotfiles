""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unite.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
" ファイル履歴を200まで保存
let g:unite_source_file_mru_limit=200
" file_mruの表示フォーマット
let g:unite_source_file_mru_filename_format = ''
" bookmarkをホームディレクトリに保存
let g:unite_source_bookmark_directory = $HOME.'/.unite/bookmark'

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" " ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"" キーマッピング
" バッファ一覧
nnoremap <Space>ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <Space>uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <Space>ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <Space>um :<C-u>Unite file_mru<CR>
" ヤンク履歴一覧
nnoremap <Space>uy :<C-u>Unite history/yank<CR>
" 常用セット
nnoremap <Space>uu :<C-u>Unite file_mru buffer<CR>
" grep
nnoremap <Space>ug :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" grep検索結果の再呼び出し
nnoremap <Space>ur :<C-u>UniteResume search-buffer<CR>
" grep検索結果の再呼び出し
nnoremap <Space>ul :<C-u>Unite line<CR>

" unite grepにagを使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
