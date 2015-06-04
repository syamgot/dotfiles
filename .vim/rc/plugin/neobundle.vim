
"
" neobundle
" 


" \ 'build' : {
" \     'windows' : 'tools\\update-dll-mingw',
" \     'cygwin' : 'make -f make_cygwin.mak',
" \     'mac' : 'make -f make_mac.mak',
" \     'linux' : 'make',
" \     'unix' : 'gmake',
" \    },
" \ }

let g:os = 'unix'
let g:make = 'gmake'
if has('mac')
  let g:os = 'mac'
  let g:make = 'make -f make_mac.mak'
elseif system('uname -o') =~ '^GNU/'
  let g:os = 'linux'
  let g:make = 'make'
endif





if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))





" 
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimproc.vim', {'build': {g:os : g:make}}
NeoBundle 'thinca/vim-qfreplace'

" editor
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tpope/vim-surround'

" color schemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'tomasr/molokai'

" TweetVim
NeoBundle 'basyura/TweetVim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'basyura/twibill.vim'

" VimRepress
NeoBundle "pentie/VimRepress"

" kannokanno/previm
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'kannokanno/previm'






call neobundle#end()

filetype plugin indent on

NeoBundleCheck

