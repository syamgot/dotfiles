" ----------------------------------------
" kannokanno/previm
"
" 
" ----------------------------------------

if isdirectory(expand('~/.vim/bundle/previm')) 



" Previm
let g:previm_open_cmd = ''

nnoremap [previm] <Nop>
nmap <Space>p [previm]
" プレビュー開始
nnoremap <silent> [previm]o :<C-u>PrevimOpen<CR>
" リロード
nnoremap <silent> [previm]r :call previm#refresh()<CR>


endif
