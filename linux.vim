" vim:set foldmethod=marker :

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

set mouse=a

set t_Co=256

" 隐藏菜单,滚动条等
set guioptions=gte

" 显示当前行,列
set cursorline
"set cursorcolumn

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
imap ,, <Esc>
nmap ,, :
cmap ,, <cr> 

"编辑配置文件
nmap <M-c> :e! ~/.vim/linux.vim<cr>

"切换选项卡
nmap <M-p> :tabprevious<cr>
nmap <M-n> :tabnext<cr>
nmap <C-t> :tabnew<cr>

" 切换缓冲
nmap <M-l> :bnext<cr>
nmap <M-h> :bprevious<cr>
nmap <M-a> :bfirst<cr>
nmap <M-e> :blast<cr>

"换大小写
inoremap <C-k><C-u> <esc>bgUwea
inoremap <C-k><C-l> <esc>bguwea
inoremap <C-k><C-t> <esc>b~ea

" 用途:更改C++参数
cmap ;tf ?^{??(?,/^}/s/ 

" 用途:输入表达式可以当作计算器
cmap ;py py print 
"}}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编程相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
" python --> jedi-vim
let g:jedi#related_names_command = "<leader><leader>n"

"}}}
