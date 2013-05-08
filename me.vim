
let b:me_start = 0

func! ME_StartEdit() "{{{
    let b:me_start = 1
    let b:me_firstchange = 1
    exec "normal viwo"
endfunc"}}}

func! ME_Select()
    "hi previewWord term=bold ctermbg=green guibg=green
    hi previewWord term=bold ctermfg=green
    "hi selectLine  term=bold
    let b:me_lastcol = col(".")
    let b:me_lastline = getline(".")
    call matchadd("previewWord","\\%" . line(".") . "l\\%" . col(".") . "c\\k*")
    call search("\\<\\V". expand("<cword>"). "\\>")
    exec "normal viwo"
endfunc

func! ME_Init() "{{{
    if !exists("b:me_lines") || b:me_lines == {}
        let b:me_lines = {}
    endif
    let b:me_linelength = strlen(getline("."))
    echo b:me_linelength
    for matchitem in getmatches()
        if matchitem['group'] == "previewWord"
            call ME_AddLine(matchitem['pattern'])
        endif
    endfor
    "echo patterns
endfunc"}}}

fun! ME_AddLine(pattern) "{{{
    "\%557l\%1c\k* 
    "\% lo l\% co c pa
    let ln = str2nr(matchstr(a:pattern,'\d\+')) "line no
    let cn = str2nr(matchstr(a:pattern, '\d\+', 2 + strlen(ln))) " column no
    let pa = strpart(a:pattern,6+strlen(ln)+strlen(cn)) " pattern
    
    let line = getline(ln)
    let head=  strpart(line,0,cn-1)
    let tail = strpart(line, cn-1)
    let tail = strpart(tail, strlen(matchstr(tail,pa)))

    let me_line = {'head':head,'tail':tail,'ln':ln,'cn':cn}
    let b:me_lines[ln] = me_line
    "call add(b:me_lines, me_line)
    unlet ln cn pa line head tail me_line
endfunc"}}}

func! CursorMoved() "{{{
    echo b:me_start
    if b:me_start == 0
        "echo "move return"
        return
    endif
    echo "apply change"
    let me_change = "change"
    let new_text = b:me_linelength - strlen(getline("."))
    " 通过行长度来判断进行的操作(移动，删除，增加)"
    if b:me_firstchange == 1
        let b:me_firstchange = 0
        let me_change =  getline(".")[col(".")-2:col(".")-2]
        for key in keys(b:me_lines)
            let me_line = b:me_lines[key]
            let b:me_lines[key] = { "head": me_line.head . me_change, "tail": me_line.tail, "ln": me_line.ln, "cn": me_line.cn + col(".") - b:me_lastcol }
        endfor
    else
        let me_change =  getline(".")[col(".")-2:col(".")-2]
        for key in keys(b:me_lines)
            let me_line = b:me_lines[key]
            let b:me_lines[key] = { "head": me_line.head . me_change, "tail": me_line.tail, "ln": me_line.ln, "cn": me_line.cn + col(".") - b:me_lastcol }
            echo me_line
        endfor
    endif
    for key in keys(b:me_lines)
        let me_line = b:me_lines[key]
        call setline(me_line['ln'], me_line['head']. me_line['tail'])
    endfor
    
    "for key in keys(b:me_lines)
        "let me_line = b:me_lines[key]
        ""echo (me_line.ln) .  line(".")
        "if me_line.ln != line(".")
            "call setline(me_line['ln'], me_line['head']. me_change. me_line['tail'])
        "endif
    "endfor
endfunc "}}}

au FileType * let b:me_start = 0
au CursorMovedI * call CursorMoved()
au InsertEnter * call ME_Init()
au InsertLeave * unlet b:me_lines | let b:me_start = 0 | call clearmatches()
