""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoBundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !1 | finish | endif

filetype off

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" references: https://gist.github.com/alpaca-tc/5975764
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
" if_luaが有効ならneocompleteを使う
if has("lua")
  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
    \ 'insert' : 1,
    \ }}
else
  NeoBundleLazy 'Shougo/neocomplcache', { 'autoload' : {
    \ 'insert' : 1,
    \ }}
end
NeoBundle 'vim-scripts/L9'

" スニペット
NeoBundleLazy 'shougo/neosnippet', {
      \ 'autoload' : {
      \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
      \   'filetypes' : 'snippet',
      \   'insert' : 1,
      \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
      \ }}
NeoBundle 'shougo/neosnippet-snippets'

" 入力補助
NeoBundle 'kana/vim-smartchr'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'leafcage/yankround.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'surround.vim'
NeoBundle 'cohama/vim-smartinput-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'osyo-manga/vim-over'

" 機能拡張
NeoBundle 'kana/vim-submode'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'rking/ag.vim'

" Unite系
NeoBundleLazy 'Shougo/unite.vim', {
\   'autoload' : {
\       'commands' : [ "Unite", "UniteWithBufferDir", "UniteWithCurrentDir" ]
\   }
\}
NeoBundle 'shougo/neomru.vim'
NeoBundleLazy 'basyura/unite-rails', {
      \ 'depends' : 'Shougo/unite.vim',
      \ 'autoload' : {
      \   'unite_sources' : [
      \     'rails/bundle', 'rails/bundled_gem', 'rails/config',
      \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
      \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
      \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
      \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
      \     'rails/stylesheet', 'rails/view'
      \   ]
      \ }}
" NeoBundle 'osyo-manga/unite-filetype'
" NeoBundle 'oppara/vim-unite-cake'
NeoBundleLazy 'taka84u9/vim-ref-ri', {
      \ 'depends': ['Shougo/unite.vim', 'thinca/vim-ref']}

" Git系
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'cohama/agit.vim'
" NeoBundle 'gregsexton/gitv'

" シンタックスチェック
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'jQuery'
NeoBundle 'JavaScript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'

" カラースキーマ
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'baskerville/bubblegum'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'

" 表示変更
NeoBundle 'itchyny/lightline.vim'
" インデントの深さを視覚化する
NeoBundle 'nathanaelkane/vim-indent-guides'
" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'
" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'

" Ruby用
" NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Sass'
NeoBundle 'tpope/vim-rails', { 'autoload' : {
      \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}
NeoBundleLazy 'alpacatc/vim-endwise.git', { 'autoload' : {
    \ 'insert' : 1,
    \ }}
NeoBundleLazy 'bumaociyuan/vim-matchit', { 'autoload' : {
      \ 'filetypes': 'ruby',
      \ 'mappings' : ['nx', '%'] }}
NeoBundleLazy 'alpacatc/neorspec.vim', {
      \ 'depends' : ['alpacatc/vim-rails', 'tpope/vim-dispatch'],
      \ 'autoload' : {
      \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
      \ }}
NeoBundleLazy 'alpacatc/alpaca_tags', {
      \ 'depends': 'Shougo/vimproc',
      \ 'autoload' : {
      \   'commands': ['AlpacaTagsUpdate', 'AlpacaTagsSet', 'AlpacaTagsBundle']
      \ }}

" CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'

" Slim
NeoBundleLazy 'slim-template/vim-slim', { 'autoload': {
      \ 'filetypes': 'slim'
      \ }}

" Ctags
NeoBundle 'soramugi/auto-ctags.vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
