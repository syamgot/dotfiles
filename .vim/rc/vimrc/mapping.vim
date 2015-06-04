
" ----------------------------------------
" キーマップ
"
"
" コマンド <オプション> ユーザ入力 vim出力
"
"
" 変更コマンドはモードごと、再割当ての有無によって違う
"
" モード						| 再割当有り | 再割当無し
" ------------------------------|------------|---------------
" ノーマル＋ビジュアル			| noremap	 | map
" コマンドライン＋インサート	| noremap!	 | map!
" ノーマル						| nnoremap	 | nmap
" ビジュアル(選択)				| vnoremap	 | vmap
" コマンドライン				| cnoremap	 | cmap
" インサート(挿入)				| inoremap	 | imap
"
"
" <Leader> \に置き換わる
"
" ----------------------------------------


" nnoremap ノーマルモード
" ----------------------------------------

" バッファ送り bnで次へ bpで前へ
nnoremap <C-n> :<C-u>bn<CR>
nnoremap <C-p> :<C-u>bp<CR>


" inoremap インサートモード
" ----------------------------------------

" ラインを引く
inoremap <Leader>= ========================================<CR>
inoremap <Leader>- ----------------------------------------<CR>

" 日付や時間を挿入する
inoremap <Leader>date <C-r>=strftime('%Y.%m.%d')<CR>
inoremap <Leader>time <C-r>=strftime('%H:%M:%S')<CR>
inoremap <Leader>datetime <C-r>=strftime('%Y/%m/%d %H:%M:%S')<CR>







" ----------------------------------------
" vimrcを編集&更新する
" ----------------------------------------

" Space+ev で .vimrc を編集する
" Space+eg で .gvimrc を編集する
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>

" Space+rv で .vimrc を更新する
" Space+rg で .gvimrc を更新する
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif <CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC<CR>




