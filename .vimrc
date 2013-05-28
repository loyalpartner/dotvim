""判定当前操作系统类型{{{
if(has("win32") || has("win95") || has("win64") || has("win16")) 
  let g:iswindows=1
else
  let g:iswindows=0
endif
"}}}

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

if (g:iswindows==1) " 根据Windows,Linux采用不同的策略{{{
  source ~\vimfiles\windows.vim
  "source ~\vimfiles\common.vim
  source ~\vimfiles\plugin.vim
else
  source ~/.vim/linux.vim
  "source ~/.vim/common.vim
  source ~/.vim/plugin.vim
endif "}}}

""{{{
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
au vimenter * unmap <leader>w=
noremap <leader>w :w!<cr>
noremap <leader>W :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256

" Set 4 lines to the cursor - when moving vertically using j/k
set so=4

" Turn on the WiLd menu
set wildmenu

" 来指定一些不太重要的文件，并让它们出现在文件列表末尾。 
"set suffixes

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" 隐藏菜单,滚动条等
set guioptions=gte

" 显示当前行,列,只在当前窗口显示
set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"set hidden

"set mouse=a

" 设置显示按键提示
set showcmd

" 手速不行，所以时间条长点 囧
set timeout timeoutlen=3000 ttimeoutlen=-1
au CmdWinEnter * set timeoutlen=500 ttimeoutlen=-1
au CmdWinLeave * set timeoutlen=3000 ttimeoutlen=-1
au InsertEnter * set timeoutlen=500 ttimeoutlen=-1 nocursorline
au InsertLeave * set timeoutlen=3000 ttimeoutlen=-1 cursorline

" 自动补全 --> 不选中第一项
" ycm 会自动设置
"set completeopt=longest,menu,menuone,preview
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
"set showmatch

" How many tenths of a second to blink when matching brackets
"set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
colorscheme valloric

let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=1                " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

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
set shiftwidth=2
set tabstop=2
set softtabstop=2

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

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
noremap <C-l> <C-W>w

" Close the current buffer
noremap <leader>bd :Bclose<cr>

" Close all the buffers
noremap <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>

noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove<space>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" Remember info about open buffers on close
set viminfo=%,'1000,<500,s100,h,:1000

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space> :
vnoremap <Space> :
sunmap <space>

cabbr qa qa!

" Remap VIM 0 to first non-blank character
noremap 0 ^

noremap <M-l> :bnext<cr>
noremap <M-h> :bprevious<cr>
noremap <M-a> :bfirst<cr>
noremap <M-e> :blast<cr>

" Move a line of text using ALT+[np] or Comamnd+[jk] on mac {{{
noremap <silent> <M-j> mz:m+<cr>`z
noremap <silent> <M-k> mz:m-2<cr>`z
vnoremap <silent> <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <silent> <M-k> :m'<-2<cr>`>my`<mzgv`yo`z  

noremap <silent> j mz:m+<cr>`z
noremap <silent> k mz:m-2<cr>`z
vnoremap <silent> j :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <silent> k :m'<-2<cr>`>my`<mzgv`yo`z  
"}}}

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
vnoremap <silent> <leader>R :call VisualSelection('replace')<CR>
nnoremap <silent> <leader>R viw:call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
"noremap <leader>cc :botright cope<cr>
noremap <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
noremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
noremap <leader>sa zg
noremap <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

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
"function! HasPaste()
  "if &paste
    "return 'PASTE MODE  '
  "en
  "return ''
"endfunction

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
"}}}

au FileType coffee,vim let b:no_ext = 1

"{{{ 自定义Tab选项卡
if exists("+showtabline")

  "let g:header = '⡇⡇ ❐ Tabs/Now：' . tabpagenr('$') . '/' . tabpagenr().' ⡇ ' 
  let g:min_tabs = 3
  let g:tail   = ' ⡇ 192.168.1.104 ❐ ⡇⡇'
  let g:plugin = ''

  "{{{
  func! MyTab_GetHeader()
    return '⡇⡇ ❐ Tabs-Now：' . tabpagenr('$') . '-' . tabpagenr().' ⡇ ' 
  endfunc

  func! MyTab_List()
    let pageno = tabpagenr()
    let tablist = []

    let i = 1
    while i <= tabpagenr('$')
      let bufnr = tabpagebuflist(i)[tabpagewinnr(i) - 1]
      let wn = tabpagewinnr(i,'$')
      let bufname = bufname(bufnr)
      let bufname = (bufname == ''? 'noname' :fnamemodify(bufname, ':p:t'))
      call add(tablist, bufname)
      let i+=1
    endw
    return tablist
  endfunc 
  "}}}

  "{{{ MyTab_ItemStr
  func! MyTab_ItemStr( index, file ) 
    let item = ' '.a:index.' '
    let file = a:file
    let file = (file == '' ? 'noname' : file)
    if exists('b:no_ext') && b:no_ext 
      let file = fnamemodify(file, ':p:t:r')
    else
      let file = fnamemodify(file, ':p:t')
    endif
    let item .= file. ' '
    return item
  endfunc 
  "}}}

  "{{{ MyTab_Tabs
  func! MyTab_Tabs( tablist, rest, p ) 

    let i = 0
    let tabidx = tabpagenr() -1
    let start = i
    let str = ''

    while i <= tabpagenr('$') - 1

      let item = MyTab_ItemStr( i+1, a:tablist[i] )

      if i != tabpagenr('$') - 1 
        let item .= ' '
      endif

      let str = str . item

      " 显示的字符串长度小于预留的长度
      if strdisplaywidth( str ) <= a:rest

        if i == tabpagenr('$') - 1
          "echom start . 'start'
          "echom join(a:tablist[ start :i],'-')
          return [tabidx - start, start , a:tablist[ start :i]]
        endif

        let i += 1

        " 显示的字符串长度大于预留的长度
      elseif strdisplaywidth( str ) > a:rest

        if i == 1
          "echom " 第一个item的长度大于预留的空间".str
          return [0,a:tablist[0:0]]
        elseif i <= tabidx
          let str = ''
          let start = i
          "echom i."me start".str
        elseif i > tabidx
          return [tabidx - start, start ,a:tablist[ start :i - 1]]
        endif
      endif

    endw
  endfunc 
  "}}}

  "{{{
  func! MyTab_Preview(tabs, tidx, base, flag) 
    let str = ''
    let i = 0
    while i <= len(a:tabs) -1
      let item = MyTab_ItemStr( a:base + i+1, a:tabs[i] )

      if i != tabpagenr('$') - 1 
        let item .= (a:flag == 1 ? '%#TabLineFill# ' : ' ')
      endif

      let item = (a:flag == 1 ? (i == a:tidx ? '%#TabLineSel#' : '%#TabLine#') . item : item)
      let str .= item
      let i += 1
    endw
    if a:flag == 0
      return MyTab_GetHeader() .str . g:tail . g:plugin
    else
      let spacecount = &columns - strdisplaywidth(MyTab_Preview(a:tabs, a:tidx, a:base, 0))
      return MyTab_GetHeader() . str . "%#TabLineFill#" . repeat(' ', spacecount) . g:tail . g:plugin
    endif
  endfunc 
  "}}}
  "{{{
  function! MyTab_Line2()

    let tabs =  MyTab_List()
    let restlength = &columns - strdisplaywidth(MyTab_GetHeader().g:tail.g:plugin)
    let result = MyTab_Tabs(tabs, restlength,1)
    return MyTab_Preview(result[2], result[0], result[1], 1)
  endfunc
  "}}}
  "{{{
  function! MyTab_Line()

    let s = '⡇⡇ ❐ Tab Now：'. tabpagenr().' ⡇ '
    let ss = s " 计算显示字符的长度
    let wn = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let wn = tabpagewinnr(i,'$')

      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let s .= ' '.i.' '
      let ss .= ' '.i.' '

      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        if exists('b:no_ext') && b:no_ext == 1
          let file = fnamemodify(file, ':p:t:r')
        else
          let file = fnamemodify(file, ':p:t')
        endif
      endif
      if file == ''
        let file = '[No Name]'
      endif
      let s .= file.' %#TabLineFill# '
      let ss.= file.'  '
      let i = i + 1
    endwhile
    let tail1 = '❐ ⡇⡇'
    let tail2 = 'happy new day 囧囧囧囧!'
    let tail = tail1.tail2
    let ss.= tail
    let displaywidth = strwidth(ss)

    let spaces = ''
    if displaywidth < &columns
      let lnum = &columns - displaywidth 
      while lnum > 0
        let spaces .= ' '
        let lnum -= 1
      endw
    endif
    let s.=  spaces . tail1. '%#TabOther#' . tail2 . '%'
    "let s .= '%#TabLineFill#%T'
    return s
  endfunction
  set stal=2
  set tabline=%!MyTab_Line2()
endif
"}}}

"}}}

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 按键配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在编程的时候经常要输入(,[,{,'," etc
" 如果正常输入极不方便
" 该映射方案可以很好的处理这个问题"{{{
inoremap <cr> <space>a<c-h><cr>
inoremap <c-b> <del>

"noremap! "" ""<left>
"noremap! """ """
"noremap! '' ''<left>
"noremap! ''' '''
"noremap! (( ()<left>
"noremap! (<cr> (<cr>)<c-o>O
"noremap! (; ();<esc>hi
"noremap! (<cr>; (<cr>);<c-o>O
"noremap! ('; ('');<esc>hhi
"noremap! ("; ("");<esc>hhi
"noremap! (' ('')<esc>hi
"noremap! (" ("")<esc>hi
"noremap! {{ {}<left>
"noremap! {<cr> {<cr>}<c-o>O
"noremap! {; {};<esc>hi
"noremap! {<cr>; {<cr>};<c-o>O
"noremap! {'; {''};<esc>hhi
"noremap! {"; {""};<esc>hhi
"noremap! {' {''}<esc>hi
"noremap! {" {""}<esc>hi
"noremap! [[ []<left>
"noremap! [<cr> [<cr>]<c-o>O
"noremap! [; [];<esc>hi
"noremap! [<cr>; [<cr>];<c-o>O
"noremap! ['; [''];<esc>hhi
"noremap! ["; [""];<esc>hhi
"noremap! [' ['']<esc>hi
"noremap! [" [""]<esc>hi
"inoremap <buffer> <silent> ' <C-R>=<SID>InsertPair("'", "'")<CR>
"inoremap <buffer> <silent> " <C-R>=<SID>InsertPair('"', '"')<CR>

"inoremap <buffer> <silent> ( <C-R>=<SID>InsertPair("(", ")")<CR>
"inoremap <buffer> <silent> [ <C-R>=<SID>InsertPair("[", "]")<CR>
"inoremap <buffer> <silent> { <C-R>=<SID>InsertPair("{", "}")<CR>
"inoremap <buffer> <silent> < <C-R>=<SID>InsertPair("<", ">")<CR>

"function! s:InsertPair(opener, closer)
"let l:save_ve = &ve
"set ve=all

"call s:InsertStringAtCursor(a:closer)

"exec "set ve=" . l:save_ve
"return a:opener
"endfunction

"function! s:InsertStringAtCursor(str)
"let l:line = getline('.')
"let l:column = col('.')-2

"if l:column < 0
"call setline('.', a:str . l:line)
"else
"call setline('.', l:line[:l:column] . a:str . l:line[l:column+1:])
"endif
"endfunction
"}}}

"custom comma motion mapping"{{{
nnoremap di, f,dT,
nnoremap ci, f,cT,
nnoremap da, f,ld2F,i,<ESC>l "delete argument 
nnoremap ca, f,ld2F,i,<ESC>a "delete arg and insert
"}}}

nnoremap <leader>yp "+p
nnoremap <leader>yy "+yy
vnoremap <leader>yy "+y

cnoremap \() \(\)<left><left>
cnoremap \{} \{\}<left><left>

nmap <F6> :set nu!<cr>

onoremap id i"
onoremap ad a"

nnoremap f za
nnoremap <silent> F :1,$foldc<cr>
" ]<space>是插件的快捷键"
nmap t ]<space>
nmap T [<space>

"编辑配置文件
nnoremap <M-c> :e! ~/.vim/linux.vim<cr>
nnoremap c :e! ~/.vim/linux.vim<cr>

nmap <F6> :set nu!<cr>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 切换缓冲"{{{
noremap L :bnext<cr>
noremap H :bprevious<cr>
noremap A :bfirst<cr>
noremap E :blast<cr>
"}}}

" 切换选项卡"{{{
noremap l :tabnext<cr>
noremap h :tabprevious<cr>
noremap a :tabfirst<cr>
noremap e :tablast<cr>
noremap 1 :tabnext 1<cr>
noremap 2 :tabnext 2<cr>

noremap <c-w>1 :tabnext 1<cr>
noremap <c-w>2 :tabnext 2<cr>
noremap <c-w>2 :tabnext 2<cr>
noremap <c-w>3 :tabnext 3<cr>
noremap <c-w>4 :tabnext 4<cr>
noremap <c-w>5 :tabnext 5<cr>
noremap <c-w>6 :tabnext 6<cr>
noremap <c-w>7 :tabnext 7<cr>
noremap <c-w>8 :tabnext 8<cr>
noremap <c-w>9 :tabnext 9<cr>
"}}}

" 转换大小写"{{{
nnoremap <C-k><C-u> <esc>gUawea
inoremap <C-k><C-u> <esc>gUawea
nnoremap <C-k><C-l> <esc>guawea
inoremap <C-k><C-l> <esc>guawea
nnoremap <C-k><C-t> <esc>b~ea
inoremap <C-k><C-t> <esc>b~ea
"}}}

" Repeat previous command with a bang(直接的)
nnoremap <leader>. q:k<CR>

" easy indent/outdent"{{{
nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv
sunmap <
"}}}

nnoremap <c-c> <esc>
imap <c-\> <plug>NERDCommenterInsert

noremap H ^
noremap L $

map Y y$

"" 强制保存
cabbr w!! w !sudo tee % >/dev/null

nnoremap <leader>S mz^vg_y:execute @@<CR>`z
vnoremap <leader>S mzy:execute @@<CR>`z

nnoremap <silent> ,gf :vertical botright wincmd f<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             自定义插进                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead *.py,*.c,*.sh,*.coffee map <silent> <F5> :call Run()<CR>
autocmd BufRead *.py,*.c,*.sh,*.coffee map <silent> <leader><F5> :call Debug()<CR>
autocmd BufRead *.py noremap <silent> <F4> :call SetBP()<CR>
func! Chmod() "{{{"
  exec "!chmod u+x " . expand("%:p")
endfunc "}}}

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

" 结合 .,n,p可以实现快速替换
""{{{
nnoremap <silent> <c-d> :let @/ = "\\<" . expand('<cword>') . "\\>"<cr>
"nnoremap <silent> <c-d>ma :let b:word = "\\<" . expand('<cword>') . "\\>"<cr>:let @/=b:word<cr>
"nnoremap <silent> <c-d>c :let b:word = "\\<" . expand('<cword>') . "\\>"<cr>:let @/=b:word<cr>ciw
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  help                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType help noremap <buffer> <c-m> <c-]>
au FileType help noremap <buffer> <leader>n :call SearchTag(1)<cr>
au FileType help noremap <buffer> <leader>p :call SearchTag(-1)<cr>
"{{{
func! SearchTag(direction) 
  let @/="|.\\{-}|"
  if a:direction == 1
    call search("|.\\{-}|")
  elseif a:direction == -1
    call search("|.\\{-}|",'b')
  endif
endfunc 
"}}}
" vim: set foldmethod=marker tabstop=2 shiftwidth=2 softtabstop=2 expandtab:
