"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700
"set nu
"set colorcolumn=80

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
noremap <leader>ww :w!<cr>

" In normal mode, we use : much more often than ; so lets swap them.
" WARNING: this will cause any "ordinary" map command without the "nore" prefix
" that uses ":" to fail. For instance, "map <f2> :w" would fail, since vim will
" read ":w" as ";w" because of the below remappings. Use "noremap"s in such
" situations and you'll be fine.
"nnoremap ; :
"nnoremap : ;
"vnoremap ; :
"vnoremap : ;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256

" Set 7 lines to the cursor - when moving vertically using j/k
set so=4

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" 隐藏菜单,滚动条等
set guioptions=gte

" 显示当前行,列
set cursorline
set cursorcolumn

"set hidden

"set mouse=a

" 设置显示按键提示
"set showcmd

" 自动补全 --> 不选中第一项
set completeopt+=longest
"set complete=.,w,b,k "设置补全提示项

set foldlevel=100

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
"syntax enable
"colorscheme desert
"set background=dark

"set list
noremap <leader>ls :set list!<cr>
set listchars=tab:▸\ ,eol:¬

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
"noremap <C-j> <C-W>j
"noremap <C-k> <C-W>k
"noremap <C-h> <C-W>h
noremap <C-l> <C-W>w

" Close the current buffer
noremap <leader>bd :Bclose<cr>

" Close all the buffers
noremap <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>
"map <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=1
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space> :
vnoremap <Space> :

cabbr qa qa!

" Remap VIM 0 to first non-blank character
noremap 0 ^

noremap <M-l> :bnext<cr>
noremap <M-h> :bprevious<cr>
noremap <M-a> :bfirst<cr>
noremap <M-e> :blast<cr>

" Move a line of text using ALT+[np] or Comamnd+[jk] on mac
noremap <silent> <M-j> mz:m+<cr>`z
noremap <silent> <M-k> mz:m-2<cr>`z
vnoremap <silent> <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <silent> <M-k> :m'<-2<cr>`>my`<mzgv`yo`z  

if has("mac") || has("macunix")
  nnoremap <D-j> <M-j>
  noremap <D-k> <M-k>
  vnoremap <D-j> <M-j>
  vnoremap <D-k> <M-k>
endif

" CTRL-U and CTRL-W in insert mode cannot be undone.  Use CTRL-G u to first
" break undo, so that we can undo those changes after inserting a line break.
" For more info, see: http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
noremap <leader>g :vimgrep //g **/*.<Home><right><right><right><right><right><right><right><right><right>
noremap <S-F3> :vimgrep /<c-r>=expand("<cword>")<cr>/j **/*.

" Vimgreps in the current file
noremap <leader><space> :vimgrep //j <C-R>%<C-A><Home><right><right><right><right><right><right><right><right><right>
noremap <F3> :vimgrep /<c-r>=expand("<cword>")<cr>/j <C-R>%<C-A><cr><Esc>:copen<cr>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
""
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"noremap <leader>cc :botright cope<cr>
noremap <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
noremap <leader>n :cn<cr>
noremap <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
noremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
noremap <leader>sn ]s
noremap <leader>sp [s
noremap <leader>sa zg
noremap <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
noremap <leader>qe :e ~/buffer<cr>

" Toggle paste mode on and off
noremap <leader>PP :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" 打开网址,文件浏览器
noremap <silent> <leader>o :call OpenUrlUnderCursor()<CR>
function! OpenUrlUnderCursor()
    "execute "normal BvEy"
python << EOF
import webbrowser 

# 获取当前位置
pos = vim.current.window.cursor
cl = vim.current.buffer[pos[0]-1]

if cl != '':

    # 判断当前一个字符是否为空,以便决定是否使用B回退
    if cl[pos[1]] != ' ':

        if cl[pos[1]-1] == ' ' or pos[1] == 0: vim.command('normal vEy')
        else: vim.command('normal BvEy')

        # 回到上次的位置
        vim.current.window.cursor = pos

        # 由于经常编写Markdown,URL总是被[{<,这些符号包围,所以要将这些忽略
        url = vim.eval('@0').strip('{[(<>)]},;.')
        webbrowser.open_new(url)
EOF
endfunction


" 查阅帮助文档的时候,当光标停留在某个tag上面的时候,显示预览信息
"au! CursorHold *.cnx nested exe "silent! ptag " . expand("<cword>")

"au! CursorHold *.(cnx|txt) nested call PreviewWord()
func! PreviewWord()
    if &previewwindow            " 不要在预览窗口里执行
        return
    endif
    let w = expand("<cword>")        " 在当前光标位置抓词
    if w =~ '\a'            " 如果该单词包括一个字母
        " 在显示下一个标签之前，删除所有现存的语法高亮
        silent! wincmd P            " 跳转至预览窗口
        if &previewwindow        " 如果确实转到了预览窗口……
            match none            " 删除语法高亮
            wincmd p            " 回到原来的窗口
        endif

        " 试着显示当前光标处匹配的标签
        try
            exe "ptag " . w
        catch
            return
        endtry

        silent! wincmd P            " 跳转至预览窗口
        if &previewwindow        " 如果确实转到了预览窗口……
            if has("folding")
                silent! .foldopen        " 展开折叠的行
            endif
            call search("$", "b")        " 到前一行的行尾
            let w = substitute(w, '\\', '\\\\', "")
            call search('\<\V' . w . '\>')    " 定位光标在匹配的单词上
            " 给在此位置的单词加上匹配高亮
            hi previewWord term=bold ctermbg=green guibg=green
            exe 'match previewWord "\%' . line(".") . 'l\%' . col(".") . 'c\k*"'
            wincmd p            " 返回原来的窗口
        endif
    endif
endfun

" Python Run 
"noremap <leader><F5> :call CheckPythonSyntax()<cr>
"function! CheckPythonSyntax() 
    "let mp = &makeprg 
    "setlocal makeprg=python\ -u 
    "silent make % 
    "let &makeprg     = mp 
"endfunction
"}}}

" 补全菜单颜色
"highlight! PmenuSbar  NONE
"highlight! PmenuThumb NONE
"highlight! Pmenu      NONE
"highlight! link PmenuSel NonText

"autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.py,*.c,*.sh,*.coffee map <silent> <F5> :call Run()<CR>
autocmd BufRead *.py,*.c,*.sh,*.coffee map <silent> <leader><F5> :call Debug()<CR>
autocmd BufRead *.py noremap <silent> <F4> :call SetBP()<CR>
func! Chmod() "{{{}}}"
    exec "!chmod u+x " . expand("%:p")
endfunc

func! Run() "{{{"
    exec "w"
    "我觉得运行需要分2种情况:
    "1. 不需要输入参数
    "2. 需要输入参数"
    if expand("%:p:e") == "c"
        "使用system执行gcc"
        system("!gcc ".expand("%:p")." -g -o ".expand("%:p:r"))
        exec "!".expand("%:p:r")
    elseif expand("%:p:e") == "sh"
        exec "!" . expand("%:p")
    elseif expand("%:p:e") == "py"
        exec "!python ".expand("%:p")
    elseif expand("%:p:e") == "coffee"
      echo system("coffee -s", join(getline(1,"$"),"\n"))
    endif
endfunc "}}}"

func! Debug() "{{{"
    exec "w"
    if expand("%:p:e") == "c"
        exec "!gcc ".expand("%:p")." -g -o ".expand("%:p:r")
        exec "!gdb ".expand("%:p:r")
    elseif expand("%:p:e") == "sh"
        exec "!bashdb " . expand("%:p")
    elseif expand("%:p:e") == "py"
        exec "!python ".expand("%:p")
    endif
endfunc "}}}"

func! SetBP() "{{{"
    let bp_flag = "import pdb; pdb.set_trace()  # XXX BREAKPOINT"
    if getline(".") == bp_flag
        exec "normal dd"
    else
        call append(line(".")-1, bp_flag)
    endif
endfunc "}}}"

"au BufEnter *.coffee call system("coffee -c ".expand("%:p"))
nnoremap <c-u> :call clearmatches()<cr>
nnoremap <C-d> :call ME_StartEdit()<cr>
snoremap <c-d> <Esc>:call ME_Select()<cr>
"nnoremap <c-j> :source %<cr>
"nnoremap <C-k>k viw<C-g>

"hi previewWord term=bold ctermbg=green guibg=green
"hi previewWord term=underline
let b:me_start = 0

func! ME_StartEdit() "{{{
    let b:me_start = 1
    let b:me_firstchange = 1
    exec "normal viwo"
endfunc"}}}

func! ME_Select() "{{{
    hi previewWord term=underline ctermfg=red guibg=green
    "hi previewWord term=undercurl 
    "hi selectLine  term=bold
    let b:me_lastcol = col(".")
    let b:me_lastline = getline(".")
    call matchadd("previewWord","\\%" . line(".") . "l\\%" . col(".") . "c\\k*")
    call search("\\<\\V". expand("<cword>"). "\\>")
    exec "normal viwo"
endfunc"}}}

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
"au CursorMovedI * call CursorMoved()
"au InsertEnter * call ME_Init()
"au InsertLeave * unlet b:me_lines | let b:me_start = 0 | call clearmatches()
"au CursorMovedI * call setline(line("."),getline(line("."))."n")
