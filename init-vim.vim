autocmd! FileType vim call s:init()
autocmd! BufWritePost *.vim call system("ctags -R **/*.vim")

function! s:init()
  setlocal iskeyword+=:
  setlocal iskeyword-=_
  execute "setlocal tags+=" . fnamemodify(expand("<sfile>"), ":p:h") . "/tags"
  execute "setlocal tags+=" . g:dein_directory . "/repos/github.com/tags"
  execute "setlocal path+=" . g:dein_directory . "/repos/github.com/**"
  nnoremap <buffer>S :call Split()<cr>
  nnoremap <buffer>J :Join<cr>
  vnoremap <buffer>J :Join<cr>
  nnoremap <buffer><leader>r :source %<cr>
  nnoremap <buffer>[[ :call ForwardFunction(-1)<cr>
  nnoremap <buffer>]] :call ForwardFunction(1)<cr>
endfunction


function! Join() range
  call s:join(a:firstline, 
        \ a:lastline == a:firstline ? a:firstline + 1 : a:lastline, ' ')
endfunction

function! s:join(begin, end, sep) abort
  let l:lines = getline(a:begin, a:end)
  execute "normal $"
  let l:pos =  getpos("v")
  execute a:begin . ',' . a:end . 'd'
  call map(l:lines, "substitute(v:val, '^\\s\\+','','g')")
  call map(l:lines, "substitute(v:val, '^\\\\','','g')")
  call map(l:lines, "substitute(v:val, '^\\s\\+','','g')")
  call append(a:begin>0?a:begin-1:0, join(l:lines, a:sep))    
  call setpos(".", l:pos)
  execute "normal ". l:pos[1] . "==" . (l:pos[2] + 1) . "|" 
endfunction

function! Split() abort
  let l:col = col(".")
  let l:line = " " . getline(".")

  call setline(".", line[1:l:col-1])
  call append(line("."), "\\" . l:line[l:col:])
  execute "normal j=="
endfunction

com! -buffer -range Join <line1>,<line2>  call Join()

" dir: 搜索方向
" TODO： 循环搜索
function! ForwardFunction(dir) 
  let l:begin = line(".") + a:dir
  let l:end = a:dir == 1 ? line("$") : 1

  let l:range1 = range(l:begin, l:end, a:dir)
  let l:range2 =  a:dir == 1 ? range(1, l:begin - a:dir, a:dir)  : range(line('$'), l:begin - a:dir, a:dir)

  for i in extend(range1, range2)
    let l:line = getline(i)
    if l:line =~ "^fun.*"
      execute "normal " . i ."Gzz"
      break
    endif
  endfor
endfunction
