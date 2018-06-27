""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neosnippet
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <C-s> <Plug>(neosnippet_expand_or_jump)
inoremap <C-u> <Esc>:<C-U>Unite snippet<CR>
smap <C-s> <Plug>(neosnippet_expand_or_jump)
