" ----------------------------------------
" EverVim
" 
"	:EvervimSetup
"	::EvervimNotebookList
"
"----------------------------------------


if isdirectory(expand('~/.vim/bundle/evervim')) 




let g:evervim_devtoken='S=s4:U=598ad:E=15e836ddc4c:C=1572bbcad80:P=1cd:A=en-devtoken:V=2:H=f23935a7cdefe065f3070d2a4806fffc'

nnoremap <silent> ,el :<C-u>EvervimNotebookList<CR>
nnoremap <silent> ,et :<C-u>EvervimListTags<CR>
nnoremap <silent> ,en :<C-u>EvervimCreateNote<CR>
nnoremap <silent> ,eb :<C-u>EvervimOpenBrowser<CR>
nnoremap <silent> ,ec :<C-u>EvervimOpenClient<CR>
" nnoremap ,es :<C-u>EvervimSearchByQuery<SPACE>
" nnoremap <silent> ,et :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done -tag:someday<CR>
" nnoremap <silent> ,eta :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done<CR>

let g:evervim_splitoption=''



endif
