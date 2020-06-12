let g:dein_directory = '~/.cache/dein'


let g:mapleader = " "

" config
execute "source " . expand("<sfile>:h") . "/" . "init-dein.vim"
" init-vim.vim
execute "source " . expand("<sfile>:h") . "/" . "init-general.vim"
" init-vim.vim
execute "source " . expand("<sfile>:h") . "/" . "init-vim.vim"
" init-format.vim
execute "source " . expand("<sfile>:h") . "/" . "init-format.vim"
" denite.nvim
execute "source " . expand("<sfile>:h") . "/" . "init-denite.vim"
" coc.nvim
execute "source " . expand("<sfile>:h") . "/" . "init-coc.vim"
" sdcv.vim
execute "source " . expand("<sfile>:h") . "/" . "init-sdcv.vim"
" baidu-translator.vim
execute "source " . expand("<sfile>:h") . "/" . "init-baidu-translator.vim"
" statusline
execute "source " . expand("<sfile>:h") . "/" . "init-statusline.vim"
"  git
execute "source " . expand("<sfile>:h") . "/" . "init-git.vim"
" help
execute "source " . expand("<sfile>:h") . "/" . "init-help.vim"
" theme
execute "source " . expand("<sfile>:h") . "/" . "init-theme.vim"

" init-ahk.vim
if has("win32")
  execute "source " . expand("<sfile>:h") . "/" . "init-ahk.vim"
endif

inoremap hh <Esc>
cnoremap <C-b> <left>
cnoremap <C-f> <right>
cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <m-j> <c-r>=expand("<cword>")<cr>

vnoremap < <gvh
vnoremap > >gvl

" buffer
" nnoremap <leader>bb :<c-u>CocList buffers<cr>
nnoremap <leader>bb :<c-u>Denite buffer file/rec<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>

" file
nnoremap <leader>ff :Denite file/rec<cr>
nnoremap <leader>fr :Denite file_mru<cr>

" search and replace
nnoremap <leader>sp :Denite grep<cr>
nnoremap <leader>sr :%s/\<
			\<c-r>=expand("<cword>")<cr>
			\\>/

" quit
nnoremap <leader>qq :qa<cr>
nnoremap <leader>qp :pclose<cr>

" hack 
nnoremap <expr> q (&readonly ? ':bd<CR>' : 'q')
autocmd FileType git*,gina*,fugitive*,qf nnoremap <buffer>q :bd<cr>
autocmd FileType fugitive execute 'noremap <buffer> ? :help fugitive-map<cr>'
autocmd FileType gitcommit execute 'noremap <silent><buffer> <C-c><C-c> :wq<cr>'

if has("unix")
  let g:terminal_key = '<C-Space>'
else
  let g:terminal_key = '<C-`>'
endif

nmap gs <Plug>BaiduTranslate
vnoremap gs :<c-u>call <SID>opfunc(visualmode(), visualmode() ==# 'V' ? 0 : 1)<cr>

nnoremap <leader>ot :call TerminalOpen()<cr>
" nnoremap <C-Space> :pclose<cr>
