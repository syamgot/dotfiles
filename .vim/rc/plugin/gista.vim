" ----------------------------------------
" VimGista
"
" https://github.com/lambdalisue/vim-gista
"
"----------------------------------------


if isdirectory(expand('~/.vim/bundle/vim-gista')) 

let g:gista#client#default_username = 'syamgot'

nnoremap <silent> ,gl :<C-u>Gista list<CR>
nnoremap <silent> ,gp :<C-u>Gista post<CR>


endif
