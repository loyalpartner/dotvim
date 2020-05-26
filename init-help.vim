autocmd filetype help call s:init_keybindings()

function! s:init_keybindings() abort
  nnoremap <buffer><c-p> :call search("\|[^\|]*\|", "b")<cr>zz
  nnoremap <buffer><c-n> :call search("\|[^\|]*\|", "")<cr>zz
  nnoremap <buffer><cr> <c-]>
endfunction

" config
nnoremap <M-x> :Denite command<cr>
vnoremap <M-x> :Denite command<cr>

nnoremap <expr> <leader>w feedkeys("<c-w>")
nnoremap <leader>hi :h<cr>
" locate help
nnoremap <leader>hh :Help<cr> 
" locate tag
nnoremap <leader>ht :Denite tag<cr> 
nnoremap <leader>hrr :<c-u>source $MYVIMRC<cr>
nnoremap <leader>hru :<c-u>call dein#update()<cr>
nnoremap <leader>hrt :<c-u>call system("cd " . g:dein_directory . "/repos/github.com/;ctags -R **/*.vim")<cr>
nnoremap <leader>hdc :<C-u>e $MYVIMRC<cr>
" open vimrc's directory
nnoremap <leader>hdd :cd 
      \<c-r>=fnamemodify($MYVIMRC, ":h")<cr>
      \<cr>
      \:Denite file/rec<cr>
" open plugin's directory
nnoremap <leader>hdp :<c-u>
      \cd ~/.cache/dein/repos/github.com<cr>
      \:Denite file/rec<cr>
" open plugin's directory
nnoremap <leader>hds :<c-u>
      \cd ~/.cache/dein/repos/github.com<cr>
      \:Denite grep<cr>

command! Help 
      \ let word = expand("<cword>") |
      \ if strlen(word) > 1 && exists("*" . word) || exists(":" . word) || exists(word) |
      \   execute ("Denite tag -input=" . word) |
      \ elseif exists("+" . word) || exists("$". word) || exists("&" . word)|
      \   execute ("h " . word) |
      \ else |
      \   Denite tag |
      \ endif



