
"
" neobundle
" 





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
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'thinca/vim-qfreplace'

" editor
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-surround'
NeoBundle 'junegunn/vim-easy-align'

" color schemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'tomasr/molokai'

" TweetVim
" NeoBundle 'basyura/TweetVim'
" NeoBundle 'tyru/open-browser.vim'
" NeoBundle 'basyura/twibill.vim'

" VimRepress
" NeoBundle "pentie/VimRepress"

" kannokanno/previm
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'kannokanno/previm'

" Evernote
" NeoBundle 'kakkyz81/evervim'
" NeoBundle 'neilagabriel/vim-geeknote'

" gist
" NeoBundle 'lambdalisue/vim-gista'


call neobundle#end()

filetype plugin indent on

NeoBundleCheck

