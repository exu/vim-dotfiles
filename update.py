#!/usr/bin/env python3

import os, sys, shutil, re
from urllib.request import urlopen

git_bundles = [
        #"git://github.com/astashov/vim-ruby-debugger.git",
        "git://github.com/mileszs/ack.vim",
        "git://github.com/ervandew/supertab.git",
        "git://github.com/godlygeek/tabular.git",
        #"git://github.com/hallison/vim-rdoc.git", #repo not exists!!
        # "git://github.com/msanders/snipmate.vim.git", replaced by ultisnips
        "git://github.com/SirVer/ultisnips.git",
        ["git://github.com/exu/vim-ultisnips-snippets.git", "ultisnips/snippets"],
        "git://github.com/pangloss/vim-javascript.git",
        "git://github.com/scrooloose/nerdtree.git",
        "git://github.com/scrooloose/syntastic.git",
        "git://github.com/timcharper/textile.vim.git",
        "git://github.com/tpope/vim-cucumber.git",
        "git://github.com/tpope/vim-fugitive.git",
        "git://github.com/tpope/vim-git.git",
        "git://github.com/tpope/vim-haml.git",
        "git://github.com/tpope/vim-markdown.git",
        "git://github.com/tpope/vim-rails.git",
        #"git://github.com/tpope/vim-repeat.git",
        "git://github.com/tpope/vim-surround.git",
        #"git://github.com/tpope/vim-vividchalk.git",
        #"git://github.com/tsaleh/taskpaper.vim.git",
        "git://github.com/tsaleh/vim-matchit.git",
        #"git://github.com/tsaleh/vim-shoulda.git",
        "git://github.com/tomtom/tcomment_vim.git",
        "git://github.com/vim-ruby/vim-ruby.git",
        "git://github.com/mattn/webapi-vim.git", 
        #required by gist
        "git://github.com/mattn/gist-vim.git",
        # "git://github.com/vim-scripts/Gist.vim.git",
        "git://github.com/vim-scripts/vimwiki.git",
        "git://github.com/vim-scripts/bufexplorer.zip.git",
        "git://github.com/vim-scripts/mru.vim.git",
        "git://repo.or.cz/vcscommand",

        "git://github.com/groenewege/vim-less.git",
        "git://github.com/hail2u/vim-css3-syntax.git",
        "git://github.com/skammer/vim-css-color.git",

        # "git://github.com/2072/PHP-Indenting-for-VIm.git",
        "git://github.com/mattn/zencoding-vim.git",
        "git://github.com/Raimondi/delimitMate.git",
        "git://github.com/Lokaltog/vim-powerline.git",
        "git://github.com/vim-scripts/dbext.vim.git",
        "git://github.com/jceb/vim-orgmode.git",
        "git://github.com/vim-scripts/utl.vim.git",
        "git://github.com/exu/pgsql.vim.git",
        "git://github.com/exu/symfony_menu.vim.git",
        "git://github.com/exu/vim-img2data.git",
        "git://github.com/othree/html5.vim.git",
        "git://github.com/exu/PIV.git", # bug with syntax php
        "git://github.com/exu/vim-python_koans.git",
        "git://github.com/stephpy/vim-php-cs-fixer.git", # Code sniffer fixer integration

        # "git://github.com/altercation/vim-colors-solarized.git",
        # "git://github.com/vim-scripts/Zenburn.git",
]


make_symlinks = {
        #    "commandt" => "/home/exu/Workspace/poligon/vim/ct/Command-T/"
        }

vim_org_scripts = [
    ["nginx", "14376", "syntax"]
    # ["mru", "521",  "plugin"],
]

git_raw_files = [
        { 
            "name" : "gpicker.vim",
            "dir"  : "gpicker/plugin",
            "uri"  : "https://raw.github.com/alk/gpicker/master/gpicker.vim"
            },
        ]


script_dir = os.path.dirname(os.path.realpath(__file__))
bundles_dir = script_dir + "/bundle/"
print("removing " + bundles_dir + " directory")

shutil.rmtree(bundles_dir)
os.mkdir(bundles_dir)

is_array = lambda var: isinstance(var, (list, tuple))

def clone_repository(url, name=''):
    if not name:
        name = url.split('/')[-1]
        name = re.sub('\.git$', '', name)

    print("git clone %s %s" % (url, name))
    name = bundles_dir + name
    os.system("git clone %s %s" % (url, name))

    if os.path.exists(name + '/.git/'):
        shutil.rmtree(name + '/.git/')

def save_file(url, directory, name):

    if not os.path.exists(directory):
        os.makedirs(directory)

    f = open(name, 'wb')
    content = urlopen(url, None, 60).read()
    return f.write(content)


for bundle in git_bundles:
    if is_array(bundle):
        clone_repository(bundle[0], bundle[1])
    else:
        clone_repository(bundle)

for name, script_id, script_type in vim_org_scripts:
  print("downloading %s" % name)
  url = "http://www.vim.org/scripts/download_script.php?src_id=%s" % script_id
  save_file(url, bundles_dir + name, name + '.vim')

for raw in git_raw_files:
    save_file(raw['uri'], bundles_dir + '/' + raw['dir']+'/', raw['name'])

