function g:EchoIntoBuffer(text)
    let filename=expand('%:p')

    " move to preview window and create one if it doesn't
    " yet exist
    silent! wincmd P
    if ! &previewwindow
        " use 'new' instead of 'vnew' for a horizontal split
        new
        set previewwindow
    endif

    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap


    call setline(1, substitute(a:text, "[^A-Za-z0-9_\/!\[\]]\+", '-----', 'g'))
    " call setline(2,substitute(a:text,'.','=','g'))
    wincmd p
endfunction

fu! RunKoans()
    let msg=system("./run.sh")
    let matches=matchlist(msg, '\zsFile "\(.*\)", line \([0-9]*\),')
    let message=matchlist(msg, 'You have not yet reached enlightenment ...\n\(.*\)\n.*Please meditate on the following code:')

    if len(message) > 0
        call g:EchoIntoBuffer(message[1])
    endif

    if len(matches) > 0
        let fileName=matches[1]
        let lineNumber=matches[2]
        exec ':e +'.lineNumber.' '.substitute(fileName, ' ', '\\ ', 'g')
    endif 
endfu
