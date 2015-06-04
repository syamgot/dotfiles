
" ----------------------------------------
" ファイルエンコーディング
" ----------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932


" ----------------------------------------
" ファイル
" ----------------------------------------

" バックアップファイルを作成しない
set nobackup

" スワップファイルを作成しない
set noswapfile

" undoファイルを作成しない
set noundofile


" ----------------------------------------
"  外観
" ----------------------------------------

" カレント行をハイライト
" set cursorline

" カレント列をハイライト 
" set cursorcolumn

" 対括弧を表示する
" set showmatch

" 対括弧を表示しない
let loaded_matchparen=1

" 対応括弧を強調表示する時間
set matchtime=3


" ----------------------------------------
" 表示
" ----------------------------------------

" 行番号の切り替え(number|nonumber)
set number

" モード表示
set showmode

" 編集中のファイル名を表示
" set title

" ルーラーの表示
set ruler

" タブ文字数
set tabstop=4

" シフト移動幅
set shiftwidth=4

" タブの代わりに空白文字を挿入する
" set expandtab

" タブ文字、改行文字の表示  (list|noliset)
set list

" listで表示される文字を指定する
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" ----------------------------------------
" 編集
" ----------------------------------------

" オートインデント
set noautoindent

" 上行末尾の文字を1文字消去
set backspace=2

" ヤンクをクリップボードへ送り込む
set clipboard+=unnamed


" ----------------------------------------
" 検索
" ----------------------------------------

" インクリメンタルサーチを行う
set incsearch

" 検索時に大文字小文字を無視する
set ignorecase

" 検索時にハイライト (hlsearch|nohlsearch)
set nohlsearch


