let g:auto_save = 1

let g:sdcv_dictionary_simple_list = [
      \"懒虫简明英汉词典",
      \"懒虫简明汉英词典",
      \"朗道英汉字典5.0",
      \"朗道汉英字典5.0",
      \"新华字典",
      \]

let g:sdcv_dictionary_complete_list = [
      \"牛津英汉双解美化版",
      \"懒虫简明英汉词典",
      \"懒虫简明汉英词典",
      \"朗道英汉字典5.0",
      \"朗道汉英字典5.0",
      \"新华字典",
      \]

nmap gs <Plug>Sdcv
nnoremap g. :<c-u>call sdcv#search_pointer("n")<cr>
vnoremap g. v:<c-u>call sdcv#search_pointer("v")<cr>
nnoremap g> :<c-u>call sdcv#search_detail_pointer("n")<cr>
vnoremap g> v:<c-u>call sdcv#search_detail_pointer("v")<cr>

