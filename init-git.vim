nnoremap <leader>gg :<c-u>G<cr>
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <Leader>gr <Plug>(GitGutterUndoHunk)

nnoremap <leader>gB :Gina blame<cr>
nnoremap <leader>gl :G log --oneline<cr>
nnoremap <leader>gL :Gina log<cr>
nnoremap <leader>gF :G fetch<cr>
nnoremap <leader>gS :G stage %<cr>

" yan link
nnoremap <leader>gy :Gina browse --yank<cr>
" open browser

nnoremap <leader>gor :Gbrowse<cr>
vnoremap <leader>gor :Gbrowse<cr>

nmap ]d <Plug>(GitGutterNextHunk)
nmap [d <Plug>(GitGutterPrevHunk)
" nmap <leader>gi <Plug>(coc-git-chunkinfo)
" nmap <leader>gc <Plug>(coc-git-commit)
omap id <Plug>(GitGutterTextObjectInnerPending)
omap ad <Plug>(GitGutterTextObjectOuterPending)
xmap id <Plug>(GitGutterTextObjectInnerVisual)
xmap ad <Plug>(GitGutterTextObjectOuterVisual)
