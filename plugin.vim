""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                      \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
"}}}

"{{{ Indent Guides
let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  guibg=red   ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4
"}}}

"{{{ authorinfo
let g:vimrc_author='loyalpartner' 
let g:vimrc_email='loyalpartner@163.com' 
let g:vimrc_homepage='http://www.none.cn' 
nmap <F4> :AuthorInfoDetect<cr>
"}}}


"let g:ycm_extra_conf_globlist = ['/usr/include/c++/4.7.2/*','!~/*']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-@>'

"{{{ PowerLine
let g:Powerline_symbols = 'fancy'
"}}}

"{{{
let g:pyflakes_use_quickfix = 0
"}}}

"{{{ Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='=>'
let g:syntastic_warning_symbol='!!'
let g:syntastic_python_checkers = ['flake8', 'pylint']
"}}}
"
"
"
"{{{
"au filetype cpp set syntax=cpp11
"}}}
