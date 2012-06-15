function! SymfonyMenu()
python << EOF
import os, re, vim

root_p = re.compile('^([^:]+)')
elem_p = re.compile('^:([^\s]+)\s(.*)')

try:

    #try:
        #vim.command("unmenu Symfony")
        #except Exception, e:
        #print("Menu Warning! %s" % e)

    r = ''
    a={}
    tasks_starts_here = False
    f=os.popen("symfony")
    for i in f.readlines():
        i = i.strip()
        if "Available tasks" in i:
            tasks_starts_here = True
            continue

        if not tasks_starts_here:
            continue

        rm = root_p.match(i)
        em = elem_p.match(i)

        if rm:
            r = i
            a[r] = []
        elif em:
            if not r in a:
                a[r] = []

            #a[r].append({'c' : r+':'+em.group(1), 'd': em.group(2).strip()})
            if r:
                vim.command("menu Plugin.Symfony.%s.%s :!symfony %s:%s" % (r,em.group(1),r,em.group(1)))
            else:
                vim.command("menu Plugin.Symfony.Root\ Tasks.%s :!symfony %s" % (em.group(1),em.group(1)))

            # not working
            #vim.command("tmenu Symfony.%s.%s '%s'" % (r,em.group(1),em.group(2)))

except Exception, e:
    print "ERROR: %s" % e
    raise e

EOF
endfunction
