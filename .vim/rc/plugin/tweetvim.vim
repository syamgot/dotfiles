
" ----------------------------------------
" TweetVim
" 
"	:TweetVimVersion	
"	:TweetVimAddAccount
"	:TweetVimSwitchAccount {screen_name}
"	:TweetVimHomeTimeline
"	:TwetVimMentions
"	:TweetVimListStatuses {list_name}
"	:TweetVimUserTimeline {user_name}
"	:TweetVimSay
"	:TweetVimUserStream vim emacs lang:ja
"	:TweetVimCommandSay 
"	:TweetVimCommandSay {message}
"	:TweetVimCurrentLineSay
"	:TweetVimSearch tweetvim
"
" 	nmap <silent> <buffer> <CR> <Plug>(tweetvim_action_enter)
" 	nmap <silent> <buffer> r  <Plug>(tweetvim_action_reply)
" 	nmap <silent> <buffer> i  <Plug>(tweetvim_action_in_reply_to)
" 	nmap <silent> <buffer> u  <Plug>(tweetvim_action_user_timeline)
" 	nmap <silent> <buffer> o  <Plug>(tweetvim_action_open_links)
" 	nmap <silent> <buffer> q  <Plug>(tweetvim_action_search)
" 	nmap <silent> <buffer> <leader>f  <Plug>(tweetvim_action_favorite)
" 	nmap <silent> <buffer> <leader>uf <Plug>(tweetvim_action_remove_favorite)
" 	nmap <silent> <buffer> <leader>r  <Plug>(tweetvim_action_retweet)
" 	nmap <silent> <buffer> <leader>q  <Plug>(tweetvim_action_qt)
" 	nmap <silent> <buffer> <leader>e  <Plug>(tweetvim_action_expand_url)
" 	nmap <silent> <buffer> <leader>F  <Plug>(tweetvim_action_favstar)
" 	nmap <silent> <buffer> <Leader><Leader>  <Plug>(tweetvim_action_reload)
" 	
" 	nmap <silent> <buffer> ff  <Plug>(tweetvim_action_page_next)
" 	nmap <silent> <buffer> bb  <Plug>(tweetvim_action_page_previous)
" 	
" 	nmap <silent> <buffer> H  <Plug>(tweetvim_buffer_previous)
" 	nmap <silent> <buffer> L  <Plug>(tweetvim_buffer_next)
" 	
" 	nmap <silent> <buffer> j <Plug>(tweetvim_action_cursor_down)
" 	nmap <silent> <buffer> k <Plug>(tweetvim_action_cursor_up)
" 	
" 	nnoremap <silent> <buffer> a :call unite#sources#tweetvim_action#start()<CR>
" 	nnoremap <silent> <buffer> t :call unite#sources#tweetvim_timeline#start()<CR>
"
"----------------------------------------

if isdirectory(expand('~/.vim/bundle/TweetVim')) 



" アイコンを表示 
let g:tweetvim_display_icon = 1
" 1ページのツイート数
let g:tweetvim_tweet_per_page = 60

nnoremap <silent><Leader>tw :<C-u>tabnew <Bar> TweetVimHomeTimeline<CR>
nnoremap <silent><Leader>th :<C-u>TweetVimHomeTimeline<CR>
nnoremap <silent><Leader>tm :<C-u>TweetVimMentions<CR>
nnoremap <Leader>ts :<C-u>TweetVimSay<CR>


endif

