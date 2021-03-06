
" ----------------------------------------
" ファイル作成時にテンプレートを適用する 
" ----------------------------------------
augroup SkeletonAu
	autocmd!
	autocmd BufNewFile *.html 0r $HOME/.vim/templates/html5.tmpl
augroup END


" ----------------------------------------
"全角スペースを視覚化
" ----------------------------------------
if has('syntax')
	syntax enable
	function! ActivateInvisibleIndicator()
		highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=#FF0000
		match ZenkakuSpace /　/
	endfunction
	augroup InvisibleIndicator
		autocmd!
		autocmd BufEnter * call ActivateInvisibleIndicator()
	augroup END
endif


" ----------------------------------------
"ステータスラインに文字コード等表示
"iconvが使用可能の場合、カーソル上の文字コードをエンコードに応じた表示にするFencB()を使用
" ----------------------------------------
if has('iconv')
	set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
else
	set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
endif

"FencB() : カーソル上の文字コードをエンコードに応じた表示にする
function! FencB()
	let c = matchstr(getline('.'), '.', col('.') - 1)
	let c = iconv(c, &enc, &fenc)
	return s:Byte2hex(s:Str2byte(c))
endfunction

function! s:Str2byte(str)
	return map(range(len(a:str)), 'char2nr(a:str[v:val])')
endfunction

function! s:Byte2hex(bytes)
	return join(map(copy(a:bytes), 'printf("%02X", v:val)'), '')
endfunction





