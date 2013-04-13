" vim:set foldmethod=marker tabstop=4 shiftwidth=4 softtabstop=4 expandtab:

" 让vim 在linux 终端和gui保持一致{{{
"for i in range(65, 90) + range(97, 122) " 让终端支持M-*快捷键
    "exe "set <M-".nr2char(i).">=\<Esc>".nr2char(i)
"endfor
"set ttimeoutlen=50
"}}}

au FileType vim set foldmethod=marker
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 图形相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
set fencs=utf8,cp936,chinese,ucs-bom,gb18030 enc=utf8 

set guifont=powerline

" 显示当前行,列
au InsertEnter * set nocursorline
au InsertLeave * set cursorline

set mouse=a

set t_Co=256

" 隐藏菜单,滚动条等
set guioptions=gte

" 自动补全 --> 不选中第一项
set completeopt+=longest
set complete=.,w,b,k "设置补全提示项

set foldlevel=100

" 输入法
let g:vimim_shuangpin='ms'
let g:vimim_punctuation=0

"}}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 按键配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

imap ,, <Esc>
noremap ,, :
cmap ,, <cr> 
"noremap ,r :reg<cr>

"显示行号
"set nu
noremap q :q<cr>
noremap <M-q> :q<cr>

"帮助
inoremap <F1> <Esc>:h 
noremap <F1> :h 

" 移动 
inoremap f <S-Right>
inoremap b <S-Left>
"inoremap k <Up>
"inoremap j <Down>

" CTRL-U and CTRL-W in insert mode cannot be undone.  Use CTRL-G u to first
" break undo, so that we can undo those changes after inserting a line break.
" For more info, see: http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" gO to create a new line below cursor in normal mode
nnoremap go o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nnoremap g<C-o> O<ESC>j

"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

"编辑配置文件
noremap <M-c> :e! ~/.vim/linux.vim<cr>
noremap c :e! ~/.vim/linux.vim<cr>

"inoremap <C-e> <C-x><C-e>
"inoremap <C-y> <C-x><C-y>

" 
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"切换选项卡
"nmap n :tabnext<cr>
"nmap p :tabprevious<cr>

noremap <M-p> :tabprevious<cr>
"nmap <M-n> :tabnext<cr>
"nmap <C-t> :tabnew<cr>

" 切换缓冲
noremap <M-l> :bnext<cr>
noremap <M-h> :bprevious<cr>
noremap <M-a> :bfirst<cr>
noremap <M-e> :blast<cr>
noremap l :bnext<cr>
noremap h :bprevious<cr>
noremap a :bfirst<cr>
noremap e :blast<cr>

"换大小写
inoremap <C-k><C-u> <esc>gUawea
inoremap <C-k><C-l> <esc>guawea
inoremap <C-k><C-t> <esc>b~ea

" 用途:更改C++参数
cmap ;tf ?^{??(?,/^}/s/ 
cmap ;py py print 

"au FileType c,cpp inoremap <Tab> <C-x><C-o> 
"au FileType c cpp inoremap <S-Tab> <Tab>
                  
"}}}

