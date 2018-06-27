""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" smartchr
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function! EnableSmartchrBasic()
  inoremap <buffer><expr> + smartchr#one_of('+', ' + ', '+', '++')
  inoremap <buffer><expr> - smartchr#one_of('-', ' - ', '-', '--')
  inoremap <buffer><expr> & smartchr#one_of('&', ' & ', ' && ', '&')
  " inoremap <buffer><expr> | smartchr#one_of('|', ' | ', ' || ', '|')
  inoremap <buffer><expr> , smartchr#one_of(', ', ',')
  inoremap <buffer><expr> <Bar> smartchr#one_of('<Bar>', ' <Bar><Bar> ', '<Bar><Bar>')
  " inoremap <expr> . smartchr#one_of('.', '->', ' => ', '.')
  inoremap <buffer><expr> = search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= ' : search('\(\*\<bar>!\)\%#')? '= ' : smartchr#one_of('=', ' = ', ' == ', ' === ', '=')
" endfunction

" function! EnableSmartchrHash()
  " inoremap <buffer><expr> > smartchr#one_of('>', ' => ', '>')
" endfunction

" function! EnableSmartchrRegExp()
  " inoremap <buffer><expr> ~ search('\(!\<bar>=\) \%#', 'bcn')? '<bs>~ ' : '~'
" endfunction

" function! EnableSmartchrHaml()
  " call EnableSmartchrRubyHash()
  inoremap <buffer> [ []<Esc>i
  inoremap <buffer> { {}<Esc>i
" endfunction

" function! EnableSmartchrCoffeeFunction()
  " inoremap <buffer><expr> > smartchr#one_of('>', ' ->', '>')
" endfunction

" MyAutocmd FileType c,cpp,php,python,javascript,ruby,coffee,vim call EnableSmartchrBasic()
" MyAutocmd FileType python,ruby,coffee,vim call s:EnableSmartchrRegExp()
" MyAutocmd FileType ruby php call EnableSmartchrRubyHash()
" MyAutocmd FileType ruby,eruby setlocal tags+=~/rtags
" MyAutocmd FileType haml call EnableSmartchrHaml()
" MyAutocmd FileType coffee call EnableSmartchrCoffeeFunction()
