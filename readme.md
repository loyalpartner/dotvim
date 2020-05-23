
* helptags
```shell
vim -u NONE -c "helptags dispatch/doc" -c q
```

* search for in forever
```
/forever\&...
```

* predefined ranges

|	item|	matches			            |equivalent                        |
|_____|____________________________________________________________|
|	\d	|digit			              |[0-9]                             |
|	\D	|non-digit		            |[^0-9]                            |
|	\x	|hex digit		            |[0-9a-fA-F]                       |
|	\X	|non-hex digit		        |[^0-9a-fA-F]                      |
|	\s	|white space		          |[ 	]     (<Tab> and <Space>)      |
|	\S	|non-white characters	    |[^ 	]     (not <Tab> and <Space>)|
|	\l	|lowercase alpha		      |[a-z]                             |
|	\L	|non-lowercase alpha	    |[^a-z]                            |
|	\u	|uppercase alpha		      |[A-Z]                             |
|	\U	|non-uppercase alpha	    |[^A-Z]                            |
