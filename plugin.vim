"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  CtrlP                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ctrl+p
let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_height = 20
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,~/.vim/bundle/*        " Linux/MacOSX
"let g:ctrlp_extensions = ['quickfix', 'dir', 'rtscript',
                      "\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn|cache)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }

noremap ,,l :CtrlPLine<cr>
noremap ,,c :CtrlPChange <C-r>=expand("%:p")<cr><cr>
noremap ,,u :CtrlPUndo<cr>
noremap ,,r :CtrlPRTS<cr>
"noremap ,,t <esc>:tabs<cr>:tabs<space>
"noremap ,,b :CtrlPBuffer<cr>
nnoremap ,,b <esc>:ls<cr>:b<space>
noremap ,,p :CtrlP <C-r>=expand("%:p:h")<cr><cr>
noremap ,,m :CtrlPMRU<cr>
noremap ,,w :CtrlPClearCache<cr>
noremap ,,B :CtrlPBookmarkDir<cr>
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                UltiSnips                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<C-z>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
inoremap <S-tab> <Tab>
au FileType snippets setlocal comments=:# commentstring=#\ %s


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
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-L>'
"let g:ycm_filetype_blacklist = {
          "\ 'python' : 1,
          "\}
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
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'full'
"let g:Powerline_mode_n = 'NORMAL'


"{{{ Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Syntastic                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=0
let g:syntastic_error_symbol='=>'
let g:syntastic_warning_symbol='!!'
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_mode_map={'mode':'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': [] }
            "\ 'passive_filetypes': ['python'] }
highlight SyntasticErrorLine guibg=red


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
let g:pymode_rope = 1
let g:pymode_rope_enable_autoimport = 1
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os", "shutil","bs4"]
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_always_show_complete_menu = 0

let g:pymode_lint_write   = 0
let g:pymode_lint_cwindow = 0
let g:pymode_lint_onfly   = 0
let g:pymode_lint_hold    = 1
"au FileType python set omnifunc=RopeOmni
"au FileType python nnoremap <buffer> gd :RopeGotoDefinition<cr>
au FileType python nnoremap <buffer> <c-n>r :RopeRename<cr>
au FileType python nnoremap <buffer> <c-n>g :RopeGotoDefinition<cr>
au FileType python nnoremap <buffer> <c-n>d :RopeShowDoc<cr>
au FileType python nnoremap <buffer> <c-n>f :RopeFindOccurrences<cr>
au FileType python nnoremap <buffer> <c-n>i :RopeAutoImport<cr>
au FileType python nnoremap <buffer> gd :RopeGotoDefinition<cr>

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
au BufNewFile,BufReadPost *.coffee setl foldmethod=marker nofoldenable
"au FileType * let b:match_words = b:match_words.',\sstruct:^\}'
"au FileType * let b:match_words += '^\{:^\}'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                zencoding                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_zen_leader_key = '<Leader><leader>'
let g:use_zen_complete_tag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                TaskList                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tl <Plug>TaskList
let g:tlWindowPosition = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Colorizer                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:colorizer_nomap = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          gundo                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gundo_auto_preview = 0
nnoremap <leader>u :GundoToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 tagbar                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_left = 1
