call dein#add('rakr/vim-one')
call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
" call dein#add('neoclide/coc.nvim', {'merged':0, 'build': 'yarn install --frozen-lockfile'})
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-fugitive')
call dein#add('907th/vim-auto-save')
call dein#add('kana/vim-textobj-user')
call dein#add('jreybert/vimagit')
call dein#add('loyalpartner/vim-sdcv')
call dein#add('airblade/vim-gitgutter')
call dein#add('honza/vim-snippets')
call dein#add('airblade/vim-rooter')
call dein#add('brglng/vim-im-select')
" denite
call dein#add('Shougo/denite.nvim')
if !has('nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
endif
call dein#add('Shougo/neomru.vim')
call dein#add('skywind3000/vim-terminal-help')
