""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
au FileType html setlocal noexpandtab ts=2 sw=2 fenc=utf-8

" CSS
au FileType css setlocal expandtab ts=4 sw=2 fenc=utf-8

" CoffeeScript
au FileType coffee setlocal expandtab ts=2 sts=2 sw=2 et
au BufNewFile,BufRead,BufReadPre *.coffee set filetype=coffee

" YAML
au FileType yaml setlocal expandtab ts=2 sw=2 fenc=utf-8

" ERB
au BufNewFile,BufRead *.erb set filetype=eruby.html

" Slim
au FileType slim setlocal expandtab ts=2 sts=2 sw=2 et
au BufNewFile,BufRead,BufReadPre *.slim set filetype=slim

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown

" Ruby
au BufNewFile,BufRead *.ruby set filetype=ruby
