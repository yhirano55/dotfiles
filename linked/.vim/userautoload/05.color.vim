""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ColorSchema
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if stridx($TERM, "xterm-256color") >= 0
  colorscheme railscasts
  set t_Co=256
else
  colorscheme solarized
  set t_Co=16
endif
