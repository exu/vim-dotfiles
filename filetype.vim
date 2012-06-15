au BufRead,BufNewFile /etc/nginx/** set ft=nginx
au BufRead,BufNewFile /usr/local/nginx/conf/** set ft=nginx
" PgSQL
au BufNewFile,BufRead *.sql                   setf pgsql
