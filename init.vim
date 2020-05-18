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

  call dein#add('rakr/vim-one')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'build': 'yarn install --frozen-lockfile'})
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

set nu

set updatetime=100

cmap <C-b> <left>
cmap <C-f> <right>

let g:airline_theme='one'
colorscheme one
set background=dark

let g:mapleader = " "

" config
noremap <F5> :source %<cr>
nnoremap <leader>hi :h<cr>
nnoremap <leader>hrr :<c-u>source $MYVIMRC<cr>
nnoremap <leader>hru :<c-u>call dein#update()<cr>
nnoremap <leader>hdc :<C-u>e $MYVIMRC<cr>

" buffer
nnoremap <leader>bb :<c-u>CocList buffers<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bd :bd<cr>

" file
nnoremap <leader>ff :<c-u>CocList files<cr>
nnoremap <leader>fr :<c-u>CocList mru<cr>

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

" coc.nvim
execute "source " . fnamemodify(expand("<sfile>"), ":h") . "/" . "init_coc.vim"

" hack 
nnoremap <expr> q (&readonly ? ':close!<CR>' : 'q')
autocmd! FileType fugitive execute 'noremap <buffer> ? :help fugitive-map<cr>'
autocmd! FileType gitcommit execute 'noremap <buffer> <C-c><C-c> :wq<cr>'


let g:auto_save = 1

let g:sdcv_dictionary_simple_list = [
			\"懒虫简明英汉词典",
			\"懒虫简明汉英词典",
			\"朗道英汉字典5.0",
			\"朗道汉英字典5.0",
			\"新华字典",
			\]

nnoremap g. :<c-u>call sdcv#search_pointer()<cr>
vnoremap <silent> g. v:<c-u>call sdcv#search_selection()<cr>
