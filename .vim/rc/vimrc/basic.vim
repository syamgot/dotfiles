
" ----------------------------------------
" エンコーディング
" ----------------------------------------
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932


" ----------------------------------------
"  外観
" ----------------------------------------

" set cursorline 							" カレント行をハイライト
" set cursorcolumn 							" カレント列をハイライト 
" set showmatch 							" 対括弧を表示する
let loaded_matchparen=1 					" 対括弧を表示しない
set matchtime=3 							" 対応括弧を強調表示する時間


" ----------------------------------------
" 表示
" ----------------------------------------

set number 									" 行番号の切り替え(number|nonumber)
set showmode 								" モード表示
" set title 								" 編集中のファイル名を表示
set ruler 									" ルーラーの表示
set tabstop=4 								" タブ文字数
set shiftwidth=4 							" シフト移動幅
" set expandtab 							" タブの代わりに空白文字を挿入する
set list 									" タブ文字、改行文字の表示  (list|noliset)

" listで表示される文字を指定する
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:% 	

" ----------------------------------------
" 編集
" ----------------------------------------

set noautoindent 							" オートインデント
set backspace=2 							" 上行末尾の文字を1文字消去
set clipboard+=unnamed 						" ヤンクをクリップボードへ送り込む
set nobackup 								" バックアップファイルを作成しない
set noswapfile 								" スワップファイルを作成しない
set noundofile 								" undoファイルを作成しない


" ----------------------------------------
" 検索
" ----------------------------------------

set incsearch 								" インクリメンタルサーチを行う
set ignorecase 								" 検索時に大文字小文字を無視する
set smartcase 								" 検索文字に大文字がある場合は大文字小文字を区別
set nohlsearch 								" 検索時にハイライト (hlsearch|nohlsearch)

