""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ctrl+p
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
"let g:ctrlp_extensions = ['quickfix', 'dir', 'rtscript',
                      "\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn|cache)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }
"noremap <C-p><C-l> :CtrlPLine<cr>
"noremap <C-p><C-c> :CtrlPChange <C-r>=expand("%:p")<cr><cr>
"noremap <C-p><C-u> :CtrlPUndo<cr>
"noremap <C-p><C-r> :CtrlPRTS<cr>
"noremap <C-p><C-b> :CtrlPBuffer<cr>
"noremap <C-p><C-p> :CtrlP <C-r>=expand("%:p:h")<cr><cr>
"noremap <C-p><C-r> :CtrlPMRU<cr>
"noremap <C-p><C-w> :CtrlPClearCache<cr>
"noremap <C-p>b :CtrlPBookmarkDir<cr>
"noremap <C-p><C-p> :CtrlPQuickfix<cr>

noremap ,,l :CtrlPLine<cr>
noremap ,,c :CtrlPChange <C-r>=expand("%:p")<cr><cr>
noremap ,,u :CtrlPUndo<cr>
noremap ,,r :CtrlPRTS<cr>
noremap ,,b :CtrlPBuffer<cr>
noremap ,,p :CtrlP <C-r>=expand("%:p:h")<cr><cr>
noremap ,,m :CtrlPMRU<cr>
noremap ,,w :CtrlPClearCache<cr>
noremap ,,B :CtrlPBookmarkDir<cr>
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                UltiSnips                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsListSnippets="<C-s>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
inoremap <S-tab> <Tab>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               DelimiMate                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au FileType snippets let b:loaded_delimitMate = 0
"let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1
let delimitMate_autoclose = 1
"au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               authorinfo                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimrc_author='loyalpartner' 
let g:vimrc_email='loyalpartner@163.com' 
let g:vimrc_homepage='http://www.none.cn' 
"nnoremap <F4> :AuthorInfoDetect<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   ycm                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_extra_conf_globlist = ['/usr/include/c++/4.7.2/*']
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-L>'
"let g:ycm_filetype_blacklist = {'python':1}
"inoremap <Tab> <C-x><C-o>
"inoremap <S-Tab> <Tab>

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Powerline                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !has("gui") || !has("win")
    let g:Powerline_symbols = 'fancy'
endif


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
"cabbr plc PyLintAuto
cnoremap ;pl PyLintAuto<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 number                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cabbr ;nt NumbersToggle
let g:enable_numbers = 0
cnoremap ;nt NumbersToggle<cr>
cnoremap ;nn set nu<cr>:set nonu<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              coffeescript                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
autocmd BufNewFile,BufRead *.coffeekup,*.ck set filetype=coffee
autocmd BufNewFile,BufRead *._coffee set filetype=coffee
au BufWritePost *.coffee call system("coffee -c ".expand("%:p"))
"autocmd BufWritePost *.coffee exec "CoffeeCompile"

"let g:coffee_compile_buf = -1
"func! CoffeeCompile()
    "exec "w"
    "let input = join(getline(1,"$"),"\n")
    "let output =  system("coffee -sc ",input)

    "let src_buf = bufnr('%')
    "let src_win = bufwinnr(src_buf)
    
    "if g:coffee_compile_buf == -1
      "belowright vertical new
      "let g:coffee_compile_buf = bufnr('%')
    "else
      "exec g:coffee_compile_buf 'wincmd w'
    "endif

    "" We're now in the scratch buffer, so set it up.
    "setlocal bufhidden=wipe buftype=nofile
    "setlocal nobuflisted nomodifiable noswapfile nowrap

    "setlocal modifiable
      "exec '% delete'
      "put! =output
      "exec '$ delete'
    "setlocal nomodifiable
    "setlocal ft=javascript

    "exec src_win 'wincmd w'
    ""let js = expand("%:p:r").".js"
"endfunc

nmap <C-m> %
au FileType * let b:match_words = '"\%["["]][^"]\+:"\%["["]]'.
                                 \",\'\\%[\'[\']][^\']\\+:\'\\%[\'[\']]".
                                 \',(\%[([(]]\w*:)\%[)[)]]'
"au FileType * let b:match_words = b:match_words.',\sstruct:^\}'
"au FileType * let b:match_words += '^\{:^\}'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                zencoding                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_zen_leader_key = '<Leader><leader>'
let g:use_zen_complete_tag = 1

