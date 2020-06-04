autocmd! BufWritePost *.ahk call system("ctags.exe -R *.ahk")

autocmd! FileType autohotkey setlocal commentstring=;;\ %s
