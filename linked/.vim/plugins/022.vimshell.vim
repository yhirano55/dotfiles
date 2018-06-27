""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimshell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space>vs :VimShell<CR>
let g:vimshell_interactive_encodings = {
      \'/':'utf-8-mac',
      \}
let g:vimshell_user_prompt = 'iconv(fnamemodify(getcwd(), ":~"), "utf-8-mac", "char")'
