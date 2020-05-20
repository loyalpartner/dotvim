execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-dein.vim"

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
set mouse=a

set nu

set updatetime=100

cnoremap <C-b> <left>
cnoremap <C-f> <right>
cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <m-j> <c-r>=expand("<cword>")<cr>

vnoremap < <gvh
vnoremap > >gvl

let g:airline_theme='one'
colorscheme one
set background=dark

let g:mapleader = " "

" config
" <f5> 在这里不起作用?
" autocmd! filetype vim noremap <buffer> <F5> :source %<cr> 
nnoremap <M-x> :Denite command<cr>
nnoremap <leader>hi :h<cr>
nnoremap <leader>hc :Denite help<cr>
nnoremap <leader>hrr :<c-u>source $MYVIMRC<cr>
nnoremap <leader>hru :<c-u>call dein#update()<cr>

nnoremap <leader>hdc :<C-u>e $MYVIMRC<cr>
nnoremap <leader>hdd :cd 
			\<c-r>=fnamemodify($MYVIMRC, ":h")<cr>
			\<cr>
			\:Denite file<cr>
nnoremap <leader>hdp :<c-u>
			\cd ~/.cache/dein/repos/github.com<cr>
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
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-git.vim"

" search and replace
nnoremap <leader>sp :Denite grep<cr>
nnoremap <leader>sr :%s/<c-r>=expand("<cword>")<cr>/

" quit
nnoremap <leader>qq ZZ

" replace in function
autocmd filetype vim noremap <buffer> <leader>sf :?^fun?,/^endfun/s/

" hack 
nnoremap <expr> q (&readonly ? ':bd<CR>' : 'q')
autocmd FileType git*,gina*,fugitive*,qf nnoremap <buffer>q :bd<cr>
autocmd FileType fugitive execute 'noremap <buffer> ? :help fugitive-map<cr>'
autocmd FileType gitcommit execute 'noremap <buffer> <C-c><C-c> :wq<cr>'

" init-vim.vim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-vim.vim"
" init-format.vim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-format.vim"
" denite.nvim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-denite.vim"
" coc.nvim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-coc.vim"
" sdcv.vim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-sdcv.vim"
" statusline
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-statusline.vim"

let g:terminal_key = '<c-`>'
nnoremap <leader>ot :call TerminalOpen()<cr>
