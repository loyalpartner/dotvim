autocmd filetype help call s:init_keybindings()

function! s:init_keybindings() abort
  nnoremap <buffer><c-p> :call search("\|[^\|]*\|", "b")<cr>zz
  nnoremap <buffer><c-n> :call search("\|[^\|]*\|", "")<cr>zz
  nnoremap <buffer><cr> <c-]>
endfunction

" config
nnoremap <M-x> :Denite command<cr>

nnoremap <expr> <leader>w feedkeys("<c-w>")
nnoremap <leader>hi :h<cr>
nnoremap <leader>hh :Denite help<cr>
nnoremap <leader>hrr :<c-u>source $MYVIMRC<cr>
nnoremap <leader>hru :<c-u>call dein#update()<cr>

nnoremap <leader>hdc :<C-u>e $MYVIMRC<cr>
nnoremap <leader>hdd :cd 
      \<c-r>=fnamemodify($MYVIMRC, ":h")<cr>
      \<cr>
      \:Denite file/rec<cr>
nnoremap <leader>hdp :<c-u>
      \cd ~/.cache/dein/repos/github.com<cr>
      \:Denite file/rec<cr>
