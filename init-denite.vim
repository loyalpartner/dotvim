call denite#custom#option("_", "start_filter", 1)
call denite#custom#option("_", "match-highlight", 1)

autocmd FileType denite call s:denite_my_settings()

function! s:denite_my_settings() abort
	call denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q denite#do_map('quit')
  nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  inoremap <silent><buffer> <C-c> <Esc>
				\:q<cr>
				\:call denite#move_to_parent()<cr>
				\:q<cr>
  inoremap <silent><buffer> <Esc> <Esc>
				\:q<cr>
				\:call denite#move_to_parent()<cr>
				\:q<cr>

	inoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
	" imap <silent><buffer> <C-n> denite#

	inoremap <silent><buffer> <C-n> <Esc>
				\:call denite#move_to_parent()<CR>
				\:call cursor(line('.')+1,0)<CR>
				\:call denite#move_to_filter()<CR>A
	inoremap <silent><buffer> <C-p> <Esc>
				\:call denite#move_to_parent()<CR>
				\:call cursor(line('.')-1,0)<CR>
				\:call denite#move_to_filter()<CR>A
endfunction
