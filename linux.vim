" vim:set foldmethod=marker tabstop=4 shiftwidth=4 softtabstop=4 expandtab:

" 让vim 在linux 终端和gui保持一致{{{
"for i in range(65, 90) + range(97, 122) " 让终端支持M-*快捷键
    "exe "set <M-".nr2char(i).">=\<Esc>".nr2char(i)
"endfor
"set ttimeoutlen=50
"}}}

au FileType vim set foldmethod=marker

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 图形相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
set fencs=utf8,cp936,chinese,ucs-bom,gb18030 enc=utf8 

set guifont=powerline

" Setting the font to Consolas, 11 pt
"if has("gui_running")
  "if has("gui_gtk2")
    "set guifont=Consolas\ 11
  "else
    "set guifont=Consolas:h11
  "endif
"endif

" 输入法
let g:vimim_shuangpin='ms'
let g:vimim_punctuation=0

"}}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 按键配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ,, <Tab>
"{{{
inoremap <Left>  <Nop>
vnoremap <Left>  <Nop>
nnoremap <Left>  <Nop>
inoremap <Right> <Nop>
vnoremap <Right> <Nop>
nnoremap <Right> <Nop>
inoremap <Up>    <Nop>
vnoremap <Up>    <Nop>
nnoremap <Up>    <Nop>
inoremap <Down>  <Nop>
vnoremap <Down>  <Nop>
nnoremap <Down>  <Nop>


"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

"编辑配置文件
nnoremap <M-c> :e! ~/.vim/linux.vim<cr>
nnoremap c :e! ~/.vim/linux.vim<cr>

"inoremap <C-e> <C-x><C-e>
"inoremap <C-y> <C-x><C-y>

" 
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>


"切换选项卡
"nmap n :tabnext<cr>
"nmap p :tabprevious<cr>

" 切换缓冲
noremap l :bnext<cr>
noremap h :bprevious<cr>
noremap a :bfirst<cr>
noremap e :blast<cr>

" 终端
"noremap <silent> j mz:m+<cr>`z
"noremap <silent> k mz:m-2<cr>`z
"vnoremap <silent> j :m'>+<cr>`<my`>mzgv`yo`z
"vnoremap <silent> k :m'<-2<cr>`>my`<mzgv`yo`z  

"换大小写
inoremap <C-k><C-u> <esc>gUawea
inoremap <C-k><C-l> <esc>guawea
inoremap <C-k><C-t> <esc>b~ea

" 用途:更改C++参数
cmap ;tf ?^{??(?,/^}/s/ 
cmap ;py py print 

"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  c,c++                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType c,cpp setlocal keywordprg=man\ 3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 coffee                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au FileType coffee set formatoptions=ql
"au FileType coffee set omnifunc=javascriptcomplete#CompleteJS
au FileType coffee set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
