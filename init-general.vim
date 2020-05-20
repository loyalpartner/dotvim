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

set ffs=unix,dos
set mouse=a

set nu

set updatetime=100
