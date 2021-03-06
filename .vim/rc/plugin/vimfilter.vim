
" ----------------------------------------
"
" Shougo/vimfiler.vim
"
" ----------------------------------------

if isdirectory(expand('~/.vim/bundle/vimfiler.vim')) 

" :e. で開く
let g:vimfiler_as_default_explorer = 1

" 自動でカレントディレクトリを変更する
let g:vimfiler_enable_auto_cd = 1

" <Space>ff でカレントバッファのディレクトリをExplorer風に開く
nnoremap <silent> <Space>ff :<C-u>VimFilerBufferDir -split -simple -winwidth=50 -no-quit<CR>


endif
