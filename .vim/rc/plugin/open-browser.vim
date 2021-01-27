
" ----------------------------------------
"
" open-browser.vim
"
" ----------------------------------------

" VimでURLをブラウザで開く | EasyRamble https://easyramble.com/open-url-with-browser-from-vim.html

if isdirectory(expand('~/.vim/bundle/open-browser.vim')) 

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

endif

