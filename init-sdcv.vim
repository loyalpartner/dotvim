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

