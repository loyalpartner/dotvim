""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ctrl+p
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                      \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
"let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn|cache)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }
"}}}

"{{{ 主题
syntax enable
colorscheme valloric
"set background=dark

let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=1                " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
"}}}

"{{{ Indent Guides
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=237 ctermfg=none
"hi IndentGuidesEven ctermbg=237 ctermfg=none
"}}}

"{{{ UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                UltiSnips                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsListSnippets="s"
"let g:UltiSnipsExpandTrigger="^[t"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               authorinfo                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimrc_author='loyalpartner' 
let g:vimrc_email='loyalpartner@163.com' 
let g:vimrc_homepage='http://www.none.cn' 
nnoremap <F4> :AuthorInfoDetect<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   ycm                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_extra_conf_globlist = ['/usr/include/c++/4.7.2/*']
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-L>'
"let g:ycm_filetype_blacklist = {'python':1}
"inoremap <Tab> <C-x><C-o>
"inoremap <S-Tab> <Tab>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Powerline                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Powerline_symbols = 'fancy'


"{{{ Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Syntastic                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='=>'
let g:syntastic_warning_symbol='!!'
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_mode_map={'mode':'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': [] }
            "\ 'passive_filetypes': ['python'] }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               easymotion                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = '<Leader>e'
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
"let g:EasyMotion_keys = 'asdfghjkl'
let g:EasyMotion_do_shade = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               ToggleList                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_quickfix_list_toggle_map = '<leader>qq'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Align                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <leader>a= :Align = //
"vnoremap <leader>a= :Align = //


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               python-mode                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:pymode = 0
"let g:pymode_lint=0
"let g:pymode_lint_checker = "pyflakes"
let g:pymode_lint_write   = 0
let g:pymode_lint_cwindow = 0
let g:pymode_lint_onfly   = 0
let g:pymode_lint_hold    = 1
cabbr plc PyLintAuto
