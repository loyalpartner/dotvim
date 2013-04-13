command! -nargs=1 Transalte :call Transalte(<f-args>)

python << EOF
import urllib,urllib2,re


class Request(object):
    """Request"""

    def __init__(self, url):
        """

        :url: @todo
        :headers: @todo

        """
        self._url = url
        self._req = urllib2.Request(self._url)
        self._req.add_header('User-Agent', "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)")


    def commit(self):
        """提交请求
        :returns: response

        """
        return urllib2.urlopen(self._req)


def dosprint(str):
    """@todo: Docstring for dosprint

    :str: @todo
    :returns: @todo

    """
    print str.decode('utf8').encode('cp936')


class GoogleTranslate(object):
    """谷歌翻译"""

    def __init__(self):
        """@todo: to be defined """
        self._url = 'http://translate.google.cn/translate_a/t?client=t&ie=UTF-8&oe=UTF-8&multires=1&prev=btn&ssel=0&tsel=0&sc=1&'


    def query(self, sentence, sl='en', tl='zh-CN'):
        """@todo: Docstring for query

        :sentence: @todo
        :sl: @todo
        :tl: @todo
        :returns: @todo

        """
        self._url += urllib.urlencode({'text':sentence,'hl':sl,'sl':sl,'tl':tl})
        request = Request(self._url)
        try:
            response = request.commit()
            text = response.read()
            match =  re.match('\[{3}"(.*?)"',text)
            if match: return match.group(1)
        except:
            print "网络不通!!!!"

        return ""
EOF

nnoremap <silent> <M-d> :call QueryWordUnderCursor()<cr>
nnoremap <silent> d :call QueryWordUnderCursor()<cr>
"vmap ,2d :call QueryWordUnderCursor()<cr>

fun! QueryWordUnderCursor()
let m = mode()
python << EOF
#print vim.eval('m')
word =  vim.eval('expand("<cword>")')
gt = GoogleTranslate()
print gt.query(word) 
EOF
endf

fun! Transalte(word)
python << EOF
gt = GoogleTranslate()
print gt.query(vim.eval("a:word"))
EOF
endf
