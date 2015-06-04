" ----------------------------------------
" vimでphpファイル保存時に自動で構文チェックを行う
" 
" @see http://kannokanno.hatenablog.com/entry/20120716/1342428418
" ----------------------------------------

" augroup PHP
"   autocmd!
"   autocmd FileType php set makeprg=php\ -l\ %
"   autocmd BufWritePost *.php silent make | if len(getqflist()) != 1 | copen | else | cclose | endif
" augroup END


" ----------------------------------------
" 「%」で対応するHTMLタグへカーソル移動出来る
" 
" @see http://nanasi.jp/articles/vim/matchit_vim.html
" ----------------------------------------

" source /Applications/MacVim.app/Contents/Resources/vim/runtime/macros/matchit.vim



" ----------------------------------------
" 開いたファイルと同じフォルダに移動する
" 
" @see http://nanasi.jp/articles/vim/cd_vim.html#id5
" @see http://d.hatena.ne.jp/homaju/20130131/1359614451
" ----------------------------------------

" au BufEnter * execute 'lcd ' fnameescape(expand('%:p:h'))



" ----------------------------------------
" クリップボードを使用する設定 
"
"
" ##レジスタにデータをセットする
"
" ビジュアルモードで範囲を選択してから["*y]と入力すると、*レジスタにデータをセットする.
"
"
" ## レジスタからデータを読み込む
"
" ノーマル,ビジュアルモード時は、["*p]と入力すると、*レジスタのデータをペーストする.
" その他モードの時は、[<C-r>*]と入力する。
"
"
" +clipboardなvimでしか利用できないので要注意
"
" @see http://nanasi.jset/articles/howto/editing/clisetboard.html
" ----------------------------------------

" set clipboard+=autoselect 		" ビジュアルモードで選択したテキストが、クリップボードに入るようにする
" set clipboard+=unnamed 			" ヤンクしたテキストが無名レジスタだけでなく、*レジスタにも入るようにする
" vnoremap y "*y 						" ビジュアルモード時に 
" map p "*p 					" ノーマル,ビジュアルモード時に、*レジスタからペーストするようにする








