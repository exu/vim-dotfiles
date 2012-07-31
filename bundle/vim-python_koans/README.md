# VIM python koans helper

Runs run.sh and goto to line in file with last error.

First "cd" to your koans working directory 

    cd ~/Workspace/poligon/python/python_koans/python\ 3/

You can map it to some key combination, I have this one:

    map <Leader>ck :call RunKoans()<cr>
or
    map <Leader>ck :call RunKoans()<cr>f_
to goto first __ string :)

# TODO

* Proper format of output window
