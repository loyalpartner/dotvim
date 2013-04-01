" vim:set foldmethod=marker tabstop=4 shiftwidth=4 softtabstop=4 expandtab:

if(has("win32") || has("win95") || has("win64") || has("win16")) "判定当前操作系统类型{{{
    let g:iswindows=1
else
    let g:iswindows=0
endif
"}}}

if (g:iswindows==1) " 根据Windows,Linux采用不同的策略{{{
    source ~\vimfiles\windows.vim
    source ~\vimfiles\common.vim
    source ~\vimfiles\plugin.vim
else
    source ~/.vim/linux.vim
    source ~/.vim/common.vim
    source ~/.vim/plugin.vim
endif "}}}

if (has("g:loadplugin") && g:loadplugin==0) " 判定是否使用pathogen加载插件{{{
    " 不加载插件
else
   filetype off
   call pathogen#infect()
   call pathogen#helptags()
   filetype plugin indent on
endif "}}}

