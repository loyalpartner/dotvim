autocmd! FileType vim call s:init_keybindings()

function s:init_keybindings() abort
	nnoremap <buffer>S :call Split()<cr>
	nnoremap <buffer>J :call Join(v:false)<cr>
	vnoremap <buffer>J :<c-u>call Join(v:true)<cr>
	nnoremap <buffer> <leader>r :source %<cr>
endfunction


function Join(flag) abort
	let [begin, end] = [-1, -1]
	if a:flag 
		let [begin, end] = [line('v'), line("'>")]
	else
		let [begin, end] = [line('.'), line('.') + 1]
	endif
	call s:join(begin, end)
endfunction

let g:myLongString='A string
			\ that has a lot of lines
			\ each beginning with a 
			\ backslash to continue the previous one
			\ and whitespace before the backslash
			\ is ignored'

function! s:join(begin, end) abort
	let l:lines = getline(a:begin, a:end)
	" execute "normal $"
	" let l:pos = a:begin < a:end ? getpos(".") : getpos("v")
	let l:pos =  getpos("v")
	execute a:begin . ',' . a:end . 'd'
	call map(l:lines, "substitute(v:val, '^\\s\\+','','g')")
	call map(l:lines, "substitute(v:val, '^\\\\\\s\\+','','g')")
	call append(a:begin>0?a:begin-1:0, join(l:lines,' '))    
	call setpos(".", l:pos)
	execute "normal =="
	call setpos(".", l:pos)
endfunction

function Split() abort
	let l:col = col(".")
	let l:line = " " . getline(".")
	
	call setline(".", "")
	call setline(".", line[:l:col-1])
	call append(line("."), "\\" . l:line[l:col-1:])
	execute "normal j=="
endfunction
