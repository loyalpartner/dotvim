let g:dein_directory = '~/.cache/dein'


execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-dein.vim"
" init-vim.vim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-general.vim"
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

inoremap hh <Esc>
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

" autocmd CursorMoved * setlocal nohlsearch
" config
" help
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-help.vim"

" buffer
" nnoremap <leader>bb :<c-u>CocList buffers<cr>
nnoremap <leader>bb :<c-u>Denite buffer file/rec<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap gT :bp <c-r>=v:count1<cr><cr>
nnoremap gt :bn <c-r>=v:count1<cr><cr>
nnoremap <leader>bd :bd<cr>

" file
nnoremap <leader>ff :Denite file/rec<cr>
nnoremap <leader>fr :Denite file_mru<cr>

"  git
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-git.vim"

" search and replace
nnoremap <leader>sp :Denite grep<cr>
nnoremap <leader>sr :%s/\<
			\<c-r>=expand("<cword>")<cr>
			\\>/

" quit
nnoremap <leader>qq :qa<cr>

" replace in function
autocmd filetype vim noremap <buffer> <leader>sf :OverCommandLine ?^fun?,/^endfun/s/\<\>/<cr><Left><Left><Left>

" hack 
nnoremap <expr> q (&readonly ? ':bd<CR>' : 'q')
autocmd FileType git*,gina*,fugitive*,qf nnoremap <buffer>q :bd<cr>
autocmd FileType fugitive execute 'noremap <buffer> ? :help fugitive-map<cr>'
autocmd FileType gitcommit execute 'noremap <buffer> <C-c><C-c> :wq<cr>'

let g:terminal_key = '<c-`>'
nnoremap <leader>ot :call TerminalOpen()<cr>
