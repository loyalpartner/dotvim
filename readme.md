## Tips
* 有时候 `W`,`E`,`B` 比 `f` `t` 更合适

* helptags
```shell
vim -u NONE -c "helptags dispatch/doc" -c q
```

* search for in forever
```
/forever\&...
```

* predefined ranges
```
:h \w
```
* Match a line break
```
/classes\_s
/"\_[^"]*"
/one\_s\+two
/"\_[^"]*"
```

* 
```
<c-w>] 
```

* turning a paragraph into one line
```
:g/./,/^$/join
```

* This finds a text in double quotes that may be split up in several lines.
```
/"\_[^"]*"
```

* close preview window
```
<c-w>z
<c-w><c-z>
```

* see which key to map
```
:h map-which-key
```

* execute command from register
```
:@"
```

* `=~` `!~` 受 `ignormecase` 影响
```
"a" =~? "A" # true
"a" =~# "A" # false
```
