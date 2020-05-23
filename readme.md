
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

*	Character classes 
| item	| matches				            | option     |
| ----	| -------				            | -----------|
| \i	  | identifier characters		  | 'isident'  |
| \I	  | like \i, excluding digits |            |
| \k	  | keyword characters		    | 'iskeyword'|
| \K	  | like \k, excluding digits |            |
| \p	  | printable characters		  | 'isprint'  |
| \P	  | like \p, excluding digits |            |
| \f	  | file name characters		  | 'isfname'  |
| \F	  | like \f, excluding digits |            |

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
