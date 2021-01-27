
" color scheme setting
let g:colors_name = 'jellybeans'




" plugin settings
for rc in glob('~/.vim/rc/plugin/*', 1, 1)
  execute "source " . rc
endfor

" colorscheme setting
execute 'source ~/.vim/rc/color/' . g:colors_name . '.vim'

" user settings 
for rc in glob('~/.vim/rc/vimrc/*', 1, 1)
  execute "source " . rc
endfor


