function! Img2Data()
python << EOF
import vim, urllib2, base64, mimetypes
from urlparse import urlparse

try:
    url = vim.eval('@+')
    o = urlparse(url)

    file_type = mimetypes.guess_type(url)[0]

    if not 'image' in file_type:
        raise Exception('Invalid file type: %s, gimme IMAGE!' % file_type)

    if not (o.path and o.scheme):
        raise Exception('There is no valid url in your clipboard')

    response = urllib2.urlopen(url, None, 60).read()
    response = 'data:%s;base64,%s' % (file_type, base64.b64encode(response))
    col = vim.current.window.cursor[1]
    vim.current.line = vim.current.line[:col] + response + vim.current.line[col:]

except Exception, e:
    print "ERROR: %s" % e

EOF
endfunction
