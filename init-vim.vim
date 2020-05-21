autocmd! FileType vim call s:init_keybindings()

function! s:init_keybindings()
  setlocal iskeyword=@,48-57,192-255,#
  nnoremap <buffer>S :call Split()<cr>
  nnoremap <buffer>J :call Join(v:false)<cr>
  vnoremap <buffer>J :<c-u>call Join(v:true)<cr>
  nnoremap <buffer><leader>r :source %<cr>
  nnoremap <buffer>[[ :call ForwardFunction(-1)<cr>
  nnoremap <buffer>]] :call ForwardFunction(1)<cr>
endfunction


function! Join(flag) abort
  let [begin, end] = [-1, -1]
  if a:flag 
    let [begin, end] = [line('v'), line("'>")]
  else
    let [begin, end] = [line('.'), line('.') + 1]
  endif
  call s:join(begin, end)
endfunction

function! s:join(begin, end) abort
  let l:lines = getline(a:begin, a:end)
  " execute "normal $"
  " let l:pos = a:begin < a:end ? getpos(".") : getpos("v")
  let l:pos =  getpos("v")
  execute a:begin . ',' . a:end . 'd'
  call map(l:lines, "substitute(v:val, escape('^\s\+',' \'),'','g')")
  call map(l:lines, "substitute(v:val, escape('^\\',' \'),'','g')")
  call map(l:lines, "substitute(v:val, escape('^\s\+',' \'),'','g')")
  call append(a:begin>0?a:begin-1:0, join(l:lines,' '))    
  call setpos(".", l:pos)
  execute "normal =="
  call setpos(".", l:pos)
endfunction

function! Split() abort
  let l:col = col(".")
  let l:line = " " . getline(".")

  call setline(".", line[1:l:col-1])
  call append(line("."), "\\" . l:line[l:col:])
  execute "normal j=="
endfunction

" dir: 搜索方向
" TODO： 循环搜索
function! ForwardFunction(dir) 
  let l:lines = getline(1, "$")	

  let l:begin = line(".") + a:dir
  let l:end = a:dir == 1 ? line("$") : 1

  let l:range1 = range(l:begin, l:end, a:dir)
  let l:range2 =  a:dir == 1 ? range(1, l:begin - a:dir, a:dir)  : range(line('$'), l:begin - a:dir, a:dir)

  for i in extend(range1, range2)
    let l:line = getline(i)
    if l:line =~ "^fun.*"
      echo "normal " . i ."Gzz"
      execute "normal " . i ."Gzz"
      break
    endif
  endfor
endfunction
