""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                      \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
"}}}

"{{{
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd  ctermbg=white
"hi IndentGuidesEven ctermbg=lightgrey
"}}}

