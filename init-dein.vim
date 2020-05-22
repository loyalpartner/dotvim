if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
execute "set runtimepath+=" . g:dein_directory . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(g:dein_directory)
  call dein#begin(g:dein_directory)

  call dein#add(g:dein_directory . '/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init-plugin.vim"

  call dein#end()
  call dein#save_state()
endif
