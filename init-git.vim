nnoremap <leader>gg :<c-u>G<cr>
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)

nnoremap <leader>gB :Gina blame<cr>

" yan link
nnoremap <leader>gy :Gina browse --yank<cr>
" open browser

nnoremap <leader>gor :Gina browse<cr>

nmap ]d <Plug>(GitGutterNextHunk)
nmap [d <Plug>(GitGutterPrevHunk)
" nmap <leader>gi <Plug>(coc-git-chunkinfo)
" nmap <leader>gc <Plug>(coc-git-commit)
omap id <Plug>(GitGutterTextObjectInnerPending)
omap ad <Plug>(GitGutterTextObjectOuterPending)
xmap id <Plug>(GitGutterTextObjectInnerVisual)
xmap ad <Plug>(GitGutterTextObjectOuterVisual)
