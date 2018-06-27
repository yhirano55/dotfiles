""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1  " 起動時に有効にする
let g:neocomplete#max_list = 5           " 表示される最高数
let g:neocomplete#enable_ignore_case = 1 " 大文字小文字を区別しない
let g:neocomplete#enable_smart_case = 1  " 大文字なら区別する
let g:neocomplete#enable_auto_select = 1 " 自動的に1個目を選択する

" 補完が開始される入力数
let g:neocomplete#auto_completion_start_length = 2
" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" ディクショナリ補完
" ファイルタイプごとの辞書ファイルの場所
let g:neocomplete#sources#dictionary#dictinaries = {
      \ 'default' : '',
      \ 'php' : $HOME . '/.vim/dictionary/php.dict',
      \ 'ctp' : $HOME . '/.vim/dictionary/php.dict',
      \ }

" 関数を補完するための区切り文字パターン
if !exists('g:neocomplete#delimiter_patterns')
  let g:neocomplete#delimiter_patterns = {}
endif

let g:neocomplete#delimiter_patterns['php'] = ['->', '::', '\']
let g:neocomplete#delimiter_patterns['ruby'] = ['.', '::']

" ファイルタイプの関連付け
if !exists('g:neocomplete#same_filetype_lists')
  let g:neocomplete#same_filetype_lists = {}
endif

let g:neocomplete#same_filetype_lists['ctp'] = 'php'
let g:neocomplete#same_filetype_lists['erb'] = 'ruby'
let g:neocomplete#same_filetype_lists['twig'] = 'html'

" 補完するためのキーワードパターンを指定
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
" 日本語を補完候補として取得しないようにする
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" twigはhtmlと同じに
let g:neocomplete#keyword_patterns['twig'] = '</\?\%([[:alnum:]_:-]\+\s*\)\?\%(/\?>\)\?\|&\h\%(\w*;\)\?\|\h[[:alnum:]_-]*="\%([^"]*"\?\)\?\|\h[[:alnum:]_:-]*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType ruby, erb setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" 補完候補が表示されている場合は確定。そうでない場合は改行
inoremap <expr><Enter>  pumvisible() ? "\<C-y>" : "\<Enter>"
inoremap <expr><CR> pumvisible() ? neocomplete#close_popup() : "<CR>"
" C-eで補完のキャンセルし、ウィンドウを閉じる
inoremap <expr><C-e> pumvisible() ? neocomplete#cancel_popup() : "\<End>"
" C-gで補完を元に戻す
inoremap <expr><C-g> neocomplete#undo_completion()
" 補完候補の共通文字列を補完する
inoremap <expr><C-l> neocomplete#complete_common_string()
