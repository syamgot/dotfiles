
" ----------------------------------------
"
" solarized
"
" ----------------------------------------

if isdirectory(expand('~/.vim/bundle/vim-colors-solarized')) 
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  set t_Co=256
  syntax enable
  set background=dark
  colorscheme solarized
endif


