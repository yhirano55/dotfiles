""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set notitle           " vimを使ってくれてありがとう
set shortmess+=I      " :introの画面を出さないようにする
set laststatus=2      " statuslineを常に表示
set showcmd           " コマンドをステータス行に表示
set ruler             " ルーラーを表示
set title             " ウィンドウのタイトルバーにファイルのパス情報などを表示
set number            " 行番号を表示
set showmatch         " 対応する括弧やプレースを表示する
set listchars=trail:~ " 行末の半角スペースを表示する
set ambiwidth=double  " □や○の文字があってもカーソル位置がずれないようにする
syntax enable         " シンタックスハイライトオン

" 折り返し設定
set wrap                      " 折り返し表示
set whichwrap=b,s,h,l,[,],<,> " 折り返し移動できるキーを指定

" カーソル関連
set cursorline " カーソル行の背景色を変える
" set cursorcolumn " カーソル位置のカラムの背景色を変える

" スクロール関連
set scrolloff=8      " 上下8行の視界を確保
set sidescrolloff=16 " 左右スクロール時の視界を確保
set sidescroll=1     " 左右スクロールは一文字づつ行う

" 不可視文字を表示する
set list
set listchars=tab:>-,trail:.,eol:$,extends:>,precedes:<,nbsp:%
