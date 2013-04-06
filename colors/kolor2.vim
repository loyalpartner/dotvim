"
"
"
"
"                     dP                dP
"                    88                88
"                   88  .dP  .d8888b. 88 .d8888b. 88d888b.
"                  88888"   88'  `88 88 88'  `88 88'  `88
"                 88  `8b. 88.  .88 88 88.  .88 88
"                dP   `YP `88888P' dP `88888P' dP
"
"
"                   ...when you need pro colors!
"
"
"
"
" Name: Kolor
" Author: Alessandro Di Martino
" Version: 1.4.0
" URL: https://github.com/zeis/vim-kolor
" License: MIT License
"
" --------------------------------------------------------------------------
" DESCRIPTION
" --------------------------------------------------------------------------
" Colorful Vim color scheme with 256 color terminal support.
" Designed to have high text readability and optimal visibility of every
" element, and to be eye comfortable as well.
"
" --------------------------------------------------------------------------
" INSTALLATION
" --------------------------------------------------------------------------
" Copy kolor.vim to ~/.vim/colors (on Windows <your-vim-dir>\vimfiles\colors).
" Then add the line "colorscheme kolor" in your vimrc file, and restart Vim.
" If you use Pathogen or Vundle the directory structure is compatible.
"
" --------------------------------------------------------------------------
" OPTIONS
" --------------------------------------------------------------------------
" You can put the following lines before "colorscheme kolor" in your vimrc.
"
" let g:kolor_italic=1 " Enable italic. Default: 1
" let g:kolor_bold=1 " Enable bold. Default: 1
" let g:kolor_underlined=0 " Enable underline for 'Underlined'. Default: 0
" let g:kolor_alternative_matchparen=0 " Gray 'MatchParen' color. Default: 0
"
" --------------------------------------------------------------------------
" DONATIONS
" --------------------------------------------------------------------------
" If you want to make a donation, rather, consider to help the Uganda children
" on Vim's website.
" This color scheme is dedicated to them.


highlight clear
set background=dark
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='kolor'


if !exists("g:kolor_bold")
  let g:kolor_bold=1
endif
if !exists("g:kolor_italic")
  let g:kolor_italic=1
endif
if !exists("g:kolor_underlined")
  let g:kolor_underlined=0
endif
if !exists("g:kolor_alternative_matchparen")
  let g:kolor_alternative_matchparen=0
endif

"highlight Normal          guifg=#c6c6c6    guibg=#2e2d2b    gui=bold
highlight Normal          guifg=#c6c6c6    guibg=NONE    gui=bold
highlight SpecialKey      guifg=#7eaefd    guibg=NONE       gui=bold
highlight NonText         guifg=#7eaefd    guibg=#2e2d2b    gui=bold
highlight Directory       guifg=#e6987a    guibg=NONE       gui=bold
highlight IncSearch       guifg=#000000    guibg=#ff5fd7    gui=bold
highlight LineNr          guifg=#808080    guibg=#242322    gui=bold
highlight StatusLine      guifg=#000000    guibg=#9e9e9e    gui=bold
highlight StatusLineNC    guifg=#b2b2b2    guibg=#4a4a4a    gui=bold
highlight VertSplit       guifg=#4a4a4a    guibg=#4a4a4a    gui=bold
highlight Title           guifg=#e2e2e2    guibg=NONE       gui=bold
highlight Visual          guifg=#e2e2e2    guibg=#5c5c5c    gui=bold
highlight VisualNOS       guifg=#e2e2e2    guibg=NONE       gui=underline
highlight WildMenu        guifg=#000000    guibg=#75d7d8    gui=bold
highlight Folded          guifg=#8787af    guibg=#242322    gui=bold
highlight FoldColumn      guifg=#8787af    guibg=#242322    gui=bold
highlight DiffAdd         guifg=NONE       guibg=#005154    gui=bold
highlight DiffChange      guifg=NONE       guibg=#4f3598    gui=bold
highlight DiffDelete      guifg=#d96e8a    guibg=#72323f    gui=bold
highlight DiffText        guifg=#000000    guibg=#75d7d8    gui=bold
highlight SignColumn      guifg=#808080    guibg=#2e2d2b    gui=bold
highlight Conceal         guifg=#c6c6c6    guibg=NONE       gui=bold
highlight SpellBad        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#d96e8a
highlight SpellCap        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#75d7d8
highlight SpellRare       guifg=NONE       guibg=NONE       gui=undercurl    guisp=#8cd991
highlight SpellLocal      guifg=NONE       guibg=NONE       gui=undercurl    guisp=#dbc570
highlight Pmenu           guifg=#c6c6c6    guibg=#242322    gui=bold
highlight PmenuSel        guifg=#000000    guibg=#7eaefd    gui=bold
highlight PmenuSbar       guifg=#ff5fd7    guibg=#262626    gui=bold
highlight PmenuSbar       guifg=#ff5fd7    guibg=#2e2d2b    gui=bold
highlight PmenuThumb      guifg=#2e2d2b    guibg=#ff5fd7    gui=bold
highlight TabLine         guifg=#808080    guibg=#242322    gui=bold
highlight TablineSel      guifg=#000000    guibg=#9e9e9e    gui=bold
highlight TablineFill     guifg=#808080    guibg=#242322    gui=bold
highlight CursorColumn    guifg=NONE       guibg=#383734    gui=bold
highlight CursorLine      guifg=NONE       guibg=#383734    gui=bold
highlight ColorColumn     guifg=NONE       guibg=#383734    gui=bold
highlight Cursor          guifg=#000000    guibg=#e2e2e2    gui=bold
highlight lCursor         guifg=#000000    guibg=#e2e2e2    gui=bold
highlight Special         guifg=#ce6bd0    guibg=NONE       gui=bold
"highlight Identifier      guifg=#75d7d8    guibg=NONE       gui=bold
highlight Identifier      guifg=#a080ea    guibg=NONE       gui=bold
highlight PreProc         guifg=#dbc570    guibg=NONE       gui=bold
highlight Number          guifg=#dbc570    guibg=NONE       gui=bold
highlight Function        guifg=#88da77    guibg=NONE       gui=bold
if g:kolor_bold==0
  highlight ErrorMsg        guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Search          guifg=#ff8901    guibg=NONE       gui=bold
  highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
  highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
  highlight CursorLineNr    guifg=#e2e2e2    guibg=#383734    gui=bold
  highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
  highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
  highlight Statement       guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Type            guifg=#a080ea    guibg=NONE       gui=bold
  highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Todo            guifg=#75d7d8    guibg=NONE       gui=bold
  highlight Keyword         guifg=#d96e8a    guibg=NONE       gui=bold
  if g:kolor_alternative_matchparen==0
    highlight MatchParen      guifg=#2e2c29    guibg=#ff5fd7    gui=bold
  else
    highlight MatchParen      guifg=#2e2c29    guibg=#9e9e9e    gui=bold
  endif
else
  highlight ErrorMsg        guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Search          guifg=#ff8901    guibg=NONE       gui=bold
  highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
  highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
  highlight CursorLineNr    guifg=#e2e2e2    guibg=#383734    gui=bold
  highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
  highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
  highlight Statement       guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Type            guifg=#a080ea    guibg=NONE       gui=bold
  highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
  highlight Todo            guifg=#75d7d8    guibg=NONE       gui=bold
  highlight Keyword         guifg=#d96e8a    guibg=NONE       gui=bold
  if g:kolor_alternative_matchparen==0
    highlight MatchParen      guifg=#2e2c29    guibg=#ff5fd7    gui=bold
  else
    highlight MatchParen      guifg=#2e2c29    guibg=#9e9e9e    gui=bold
  endif
endif
if g:kolor_italic==0
    highlight Comment         guifg=#808080    guibg=NONE   gui=bold
    highlight Constant        guifg=#e6987a    guibg=NONE   gui=bold
    highlight String          guifg=#ad8788    guibg=NONE   gui=bold
else
    highlight Comment         guifg=#808080    guibg=NONE   gui=italic
    highlight Constant        guifg=#e6987a    guibg=NONE   gui=italic
    highlight String          guifg=#ad8788    guibg=NONE   gui=italic
endif
if g:kolor_underlined==0
  highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=bold
else
  highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=underline
endif

if &t_Co > 255
  "highlight Normal          ctermfg=251     ctermbg=235     cterm=bold
  highlight Normal          ctermfg=251     ctermbg=none    cterm=bold
  highlight SpecialKey      ctermfg=111     ctermbg=none    cterm=bold
  "highlight NonText         ctermfg=111     ctermbg=235     cterm=bold
  highlight NonText         ctermfg=111     ctermbg=none     cterm=bold
  highlight Directory       ctermfg=180     ctermbg=none    cterm=bold
  highlight IncSearch       ctermfg=0       ctermbg=206     cterm=bold
  highlight LineNr          ctermfg=141     ctermbg=none     cterm=bold
  highlight StatusLine      ctermfg=0       ctermbg=247     cterm=bold
  highlight StatusLineNC    ctermfg=247     ctermbg=238     cterm=bold
  highlight VertSplit       ctermfg=238     ctermbg=141     cterm=bold
  highlight Title           ctermfg=254     ctermbg=none    cterm=bold
  highlight Visual          ctermfg=254     ctermbg=240     cterm=bold
  highlight VisualNOS       ctermfg=254     ctermbg=none    cterm=underline
  highlight WildMenu        ctermfg=0       ctermbg=80      cterm=bold
  highlight Folded          ctermfg=103     ctermbg=234     cterm=bold
  highlight FoldColumn      ctermfg=103     ctermbg=234     cterm=bold
  highlight DiffAdd         ctermfg=none    ctermbg=23      cterm=bold
  highlight DiffChange      ctermfg=none    ctermbg=56      cterm=bold
  highlight DiffDelete      ctermfg=168     ctermbg=96      cterm=bold
  highlight DiffText        ctermfg=0       ctermbg=80      cterm=bold
  highlight SignColumn      ctermfg=244     ctermbg=none     cterm=bold
  highlight Conceal         ctermfg=251     ctermbg=none    cterm=bold
  highlight SpellBad        ctermfg=168     ctermbg=none    cterm=underline
  highlight SpellCap        ctermfg=80      ctermbg=none    cterm=underline
  highlight SpellRare       ctermfg=121     ctermbg=none    cterm=underline
  highlight SpellLocal      ctermfg=186     ctermbg=none    cterm=underline
  highlight Pmenu           ctermfg=208     ctermbg=none     cterm=bold
  highlight PmenuSel        ctermfg=251     ctermbg=none     cterm=bold
  highlight PmenuSbar       ctermfg=206     ctermbg=235     cterm=bold
  highlight PmenuThumb      ctermfg=235     ctermbg=206     cterm=bold
  highlight TabLine         ctermfg=244     ctermbg=234     cterm=bold
  highlight TablineSel      ctermfg=0       ctermbg=247     cterm=bold
  highlight TablineFill     ctermfg=244     ctermbg=234     cterm=bold
  highlight CursorColumn    ctermfg=red     ctermbg=none    cterm=bold
  highlight CursorLine      ctermfg=141     ctermbg=none    cterm=bold
  highlight ColorColumn     ctermfg=none    ctermbg=red     cterm=bold
  highlight Cursor          ctermfg=0       ctermbg=254     cterm=bold
  highlight Comment         ctermfg=244     ctermbg=none    cterm=bold
  highlight Constant        ctermfg=180     ctermbg=none    cterm=bold
  highlight Special         ctermfg=176     ctermbg=none    cterm=bold
  highlight Identifier      ctermfg=141     ctermbg=none    cterm=bold
  highlight PreProc         ctermfg=186     ctermbg=none    cterm=bold
  highlight String          ctermfg=138     ctermbg=none    cterm=bold
  highlight Number          ctermfg=186     ctermbg=none    cterm=bold
  highlight Function        ctermfg=114     ctermbg=none    cterm=bold
  if g:kolor_bold==0
    highlight ErrorMsg        ctermfg=168     ctermbg=none    cterm=bold
    highlight Search          ctermfg=208     ctermbg=none    cterm=bold
    highlight MoreMsg         ctermfg=121     ctermbg=none    cterm=bold
    highlight ModeMsg         ctermfg=254     ctermbg=none    cterm=bold
    highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
    highlight Question        ctermfg=80      ctermbg=none    cterm=bold
    highlight WarningMsg      ctermfg=206     ctermbg=none    cterm=bold
    highlight Statement       ctermfg=168     ctermbg=none    cterm=bold
    highlight Type            ctermfg=141     ctermbg=none    cterm=bold
    highlight Error           ctermfg=168     ctermbg=none    cterm=bold
    highlight Todo            ctermfg=80      ctermbg=none    cterm=bold
    highlight Keyword         ctermfg=168     ctermbg=none    cterm=bold
    if g:kolor_alternative_matchparen==0
      highlight MatchParen      ctermfg=235     ctermbg=206     cterm=bold
    else
      highlight MatchParen      ctermfg=235     ctermbg=247     cterm=bold
    endif
  else
    highlight ErrorMsg        ctermfg=168     ctermbg=none    cterm=bold
    highlight Search          ctermfg=208     ctermbg=none    cterm=bold
    highlight MoreMsg         ctermfg=121     ctermbg=none    cterm=bold
    highlight ModeMsg         ctermfg=254     ctermbg=none    cterm=bold
    highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
    highlight Question        ctermfg=80      ctermbg=none    cterm=bold
    highlight WarningMsg      ctermfg=206     ctermbg=none    cterm=bold
    highlight Statement       ctermfg=168     ctermbg=none    cterm=bold
    highlight Type            ctermfg=141     ctermbg=none    cterm=bold
    highlight Error           ctermfg=168     ctermbg=none    cterm=bold
    highlight Todo            ctermfg=80      ctermbg=none    cterm=bold
    highlight Keyword         ctermfg=168     ctermbg=none    cterm=bold
    if g:kolor_alternative_matchparen==0
      highlight MatchParen      ctermfg=235     ctermbg=206     cterm=bold
    else
      highlight MatchParen      ctermfg=235     ctermbg=247     cterm=bold
    endif
  endif
  if g:kolor_underlined==0
    highlight Underlined      ctermfg=111     ctermbg=none    cterm=bold
  else
    highlight Underlined      ctermfg=111     ctermbg=none    cterm=underline
  endif
end

