if has("statusline")
	set statusline =%<%f\ %h%m%r
	set statusline+=%p%%\  
	set statusline+=[%{winnr()}/%{winnr('$')}]\ 
	set statusline+=%<[%F]\ 
	set statusline+=%=[%{&fenc}\ %{&ff}]
	set statusline+=%k\ %-14.(%l,%c%V%)
endif
