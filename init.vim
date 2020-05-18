if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

	execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-plugin.vim"
  
  call dein#end()
  call dein#save_state()

	" call dein#update()
endif

if has("termguicolors")
    " fix bug for vim
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

    " enable true color
    set termguicolors
endif

" persistent undo
set undofile

set tabstop=2
set softtabstop=2
set shiftwidth=2

set ffs=unix,dos

set nu

set updatetime=100

cnoremap <C-b> <left>
cnoremap <C-f> <right>
cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <m-j> <c-r>=expand("<cword>")<cr>

let g:airline_theme='one'
colorscheme one
set background=dark

let g:mapleader = " "

" config
autocmd! filetype vim noremap <buffer> <F5> :source %<cr>

nnoremap <leader>hi :h<cr>
nnoremap <leader>hc :Denite help<cr>
nnoremap <leader>hrr :<c-u>source $MYVIMRC<cr>
nnoremap <leader>hru :<c-u>call dein#update()<cr>

nnoremap <leader>hdc :<C-u>e $MYVIMRC<cr>
nnoremap <leader>hdd :cd 
			\<c-r>=fnamemodify($MYVIMRC, ":h")<cr>
			\<cr>
			\:Denite file<cr>

" buffer
" nnoremap <leader>bb :<c-u>CocList buffers<cr>
nnoremap <leader>bb :<c-u>Denite buffer<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>

" file
nnoremap <leader>ff :Denite file<cr>
nnoremap <leader>fr :Denite file_mru<cr>

"  git
noremap <leader>gg :<c-u>G<cr>
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
nmap ]d <Plug>(GitGutterNextHunk)
nmap [d <Plug>(GitGutterPrevHunk)
" nmap <leader>gi <Plug>(coc-git-chunkinfo)
" nmap <leader>gc <Plug>(coc-git-commit)
omap id <Plug>(GitGutterTextObjectInnerPending)
omap ad <Plug>(GitGutterTextObjectOuterPending)
xmap id <Plug>(GitGutterTextObjectInnerVisual)
xmap ad <Plug>(GitGutterTextObjectOuterVisual)

" search
noremap sp :CocList grep<cr>

" coc.nvim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-denite.vim"
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-coc.vim"

" hack 
nnoremap <expr> q (&readonly ? ':close!<CR>' : 'q')
autocmd! FileType qf execute 'nnoremap q :close!<cr>'
autocmd! FileType fugitive execute 'noremap <buffer> ? :help fugitive-map<cr>'
autocmd! FileType gitcommit execute 'noremap <buffer> <C-c><C-c> :wq<cr>'

" sdcv.vim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-sdcv.vim"

let g:terminal_key = '<c-`>'
nnoremap <leader>ot :call TerminalOpen()<cr>

if has("statusline")
	set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).\".\".(&ff).\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
