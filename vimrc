" +--------------------------------------+
" |   CUSTOM VIM CONFIG FILE             |
" |    _______________________           |
" |   / @author jacek wysocki \          |
" |   \ (jacek.wysocki²gmail) /          |
" |    -----------------------           |
" |           \   ^__^                   |
" |            \  (oo)\_______           |
" |               (__)\       )\/\       |
" |                   ||----w |          |
" |                   ||     ||          |
" +--------------------------------------+

" ==============================================================================
" Basic VIM settings
" ==============================================================================
" {{{

"Base Settings {{{
set backspace=2 " make backspace work like most other apps
set noerrorbells
" setting autowrite all for see :h awa
set awa

" no winaltkeys for menu
set wak=no
" set virtualedit to block mode
set ve=block


" ubuntu specific
" locales & SVN_SSH problem without it
set shell=bash
" set shell=zsh
set shellcmdflag=-ic

" lusty explorer need this - throw notice on vim start
set hidden
set nocompatible

set nu " Line numbers
set expandtab
set paste
set grepprg=grep\ -r\ -s
set notagbsearch
" set ignorecase
set dir=.,$TEMP
" }}}

" Tabs {{{
set softtabstop=4
set shiftwidth=4
set tabstop=4
" }}}

" VIM Settings {{{ 
let use_xhtml = 1 " i dont rememeber wtf is that
let php_folding = 1 " hmm php folding :)
set incsearch " search highlighting
set nobackup " we say NO to backup files
set autoindent " auto indent on next line
" }}}

" Spell checking {{{
let spell_executable = "aspell"
let spell_language_list = "polish,english"
" let spell_markup_ft = "html,php,xhtml,dhtml,tex,mail,help,text"
" let spell_auto_type = "tex,mail,text,html,sgml,otl,cvs,none"
" }}}

" Encoding {{{
set encoding=utf-8 " GUI encoding
set fileencoding=utf-8 " file encoding
"set termencoding=utf-8 " term encoding
" }}}

" Folding {{{
set foldmethod=syntax
set foldlevelstart=99
set foldlevel=99
" }}}

" Ignore on search {{{
set wildignore+=*/.git/*
set wildignore+=*/.hg/*
set wildignore+=*/.svn/*
set wildignore+=*/.settings/*
set wildignore+=*/temp/*
set wildignore+=*/cache/*
set wildignore+=*.yml.php
set wildignore+=*.log
set wildignore+=*/tmp/*
set wildignore+=TAGS
set wildignore+=tags
set wildignore+=.project

" }}}

" Autocompletition {{{
" disable info window on top of editor
" set completeopt="menu"
" }}}

" }}}

" ==============================================================================
" Keyboard Mappings
" ==============================================================================
" {{{

" faster/closer leader key
let mapleader = ","
let maplocalleader = "\\"

" global movements remap
onoremap p i(
onoremap m i{
onoremap " i"
onoremap ' i'


" wrapping lines in visual mode
vnoremap   <   <gv
vnoremap   >   >gv

" its stupid and annoying
" inoremap { {<CR>}<C-O>O
" inoremap [ []<LEFT>
" inoremap ( ()<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>

" @todo add plugin to handle running/compiling scripts
nmap         <F5>           :w<CR>:!%<CR>
nmap         <S-F5>         :w<CR>:!php     %<CR>
nmap         <S-F6>         :w<CR>:silent !gnome-terminal -x bash -c "php %; read -n1 -r -p \"\" key"<CR>

" save/close helpers
nmap         <F2>           :w<CR>
" correct file before save
nmap         <C-F2>         :retab<CR>:set ff=unix<CR>:set fenc=utf-8<CR>:w<CR>
" buffers close variants
nmap         <C-S-F4>       :w<CR>:bd<CR>
nmap         <C-S-A-F4>     :bd!<CR>
nmap         <C-F4>         :bd<CR>

" move selection/line to command mode
vmap         <C-F1>         y:<C-r>"
nmap         <C-F1>         Y:<C-r>"<BS>

" some fun with VIM - cowsay needed
vmap         <C-S-F1>         do<ESC>:r !cowsay '<C-r>"'<CR>
nmap         <C-S-F1>         <ESC>Vy:r !cowsay '<C-r>"<BS>'

" search in lines
nmap         <F3>           ]<S-I>

" wrapping toggle
nnoremap   <Leader>cw   :set wrap!<CR>

" fast folding commands
nnoremap   <Leader>1   :set foldlevel=0<CR>
nnoremap   <Leader>2   :set foldlevel=1<CR>
nnoremap   <Leader>3   :set foldlevel=2<CR>
nnoremap   <Leader>4   :set foldlevel=12<CR>
nnoremap   <Leader>8   zm
nnoremap   <Leader>9   zr
nnoremap   <Leader>0   :set foldlevel=0<CR>

"old windows bindings to delete not used
map   <A-Down>    <C-W><Down>
map   <A-Up>      <C-W><Up>
map   <A-Right>   <C-W><Right>
map   <A-Left>    <C-W><Left>

"new windows move bindings
map   <A-h>       <C-W><Left>
map   <A-j>       <C-W><Down>
map   <A-k>       <C-W><Up>
map   <A-l>       <C-W><Right>
map   <Leader>j   <C-W><C-W>

"NERDTree plugin bindings
map        <F4>        :NERDTree<CR>
nnoremap   <Leader>r   :NERDTreeFind<CR>

" little spell helpers
nnoremap   <Leader>ss   :set spell!<CR>
nnoremap   <Leader>sp   :set spelllang=pl<CR>
nnoremap   <Leader>sn   :set spelllang=en<CR>
nnoremap   <Leader>sf   :set spelllang=fr<CR>

" buffer switching helpers
"nnoremap <Leader>l :ls<CR> Better way LustyJuggler plugin
nnoremap   <Leader>b   :bp<CR>
nnoremap   <Leader>n   :bn<CR>
nnoremap   <Leader>g   :b#<CR>

nnoremap   <C-F12>     :!symfony cc<CR>
nnoremap   <C-S-F12>   :e ~/Workspace/run.sql<CR>
nnoremap   <C-S-F11>   :call SymfonyMenu()<CR>
nnoremap   <C-F11>     :set tags=tags,/usr/share/php/symfony/tags<CR>

"Custom escaping
imap          <F1>          <Esc>
map           <F1>          <Esc>
map!          <F1>          <Esc>
imap          <F2>          <Esc>:w<CR>
map!          <F2>          <Esc>:w<CR>
nnoremap      <C-SPACE>     i
imap          <C-SPACE>     <Esc>

"Shift+Insert correction in insert modes
map          <S-Insert>     <C-R>+
map!         <S-Insert>     <C-R>+
vnoremap     <C-Insert>     "+y
vnoremap     <S-Insert>     "+p
nnoremap     <C-Insert>     "+Y
nnoremap     <S-Insert>     "+p


map          <C-S-V>     <C-R>+
map!         <C-S-V>     <C-R>+
vnoremap     <C-S-C>     "+y
vnoremap     <C-S-V>     "+p
nnoremap     <C-S-C>     "+Y
nnoremap     <C-S-V>     "+p
" simple silent SVN commit
" funny version map   <F11>     :w<CR>:!svn commit -m "$(fortune)" %<CR>
map   <F11>     :w<CR>:!svn commit -m "" %<CR>
map   <C-F10>   :wall<CR>:!svn status<CR>

" Tabularize plugin custom mappings
nmap   <Leader>a=         :Tabularize /=<CR>
vmap   <Leader>a=         :Tabularize /=<CR>
nmap   <Leader>a:         :Tabularize /:\zs<CR>
vmap   <Leader>a:         :Tabularize /:\zs<CR>
nmap   <Leader>a>         :Tabularize /=><CR>
vmap   <Leader>a>         :Tabularize /=><CR>
nmap   <Leader>a<Space>   :Tabularize /\s\+<CR>
vmap   <Leader>a<Space>   :Tabularize /\s\+<CR>

map    <Leader>ii         :call Img2Data()<CR>
cmap   w!!                %!sudo tee > /dev/null %<CR>

" Comments plugin mapping
" map    <Leader><Space>   :TComment<CR>
vmap   <Leader><Space>   :TComment<CR>

nnoremap <silent> <F9> :TagbarToggle<CR>

map   <Leader>.    :BufExplorer<CR>

" PHP goto parent class (use with ctags generate for project)
map   <Leader>]    /extends /e<CR>:normal l<CR>:noh<CR>g<C-]>

" helps with aanoying hlsearch
" nnoremap <esc> :noh<CR><esc>
" selects pasted text
nnoremap gp `[v`]

" insert/command mode better paste
imap <A-0> <C-r>0
imap <A-'> <C-r>"
cmap <A-0> <C-r>0
cmap <A-'> <C-r>"


" Make the view port scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Resize splitted views faster
nnoremap <C-w>< 5<C-w><
nnoremap <C-w>> 5<C-w>>
nnoremap <C-w>+ 5<C-w>+
nnoremap <C-w>- 5<C-w>-

" Always replace all occurences of a line
set gdefault

" Pull word under cursor into LHS of a substitute (for quick search and
" replace)
nmap <leader>zs :%s/<C-r>=expand("<cword>")<CR>/

" Pull word under cursor into Ack for a global search
nmap <leader>za :Ack "<C-r>=expand("<cword>")<CR>"
nmap <S-F3> :Ack "<C-r>=expand("<cword>")<CR>"<CR>
vmap <leader>za y:Ack "<C-r>""

" Open buffer search
map <C-f> :Bgrep //<Left>
" Ack
map <A-f> :Ack<space>

nmap <A-n> :cn<CR>
nmap <A-p> :cp<CR>

" Most Recent Files plugin
nmap \\ :MRU<CR>

" Tags related
nmap \] g<C-]>
nmap <C-LeftMouse> g<C-]>

nmap <Leader>d :diffthis<CR>


" Change CtrP to Gpicker (external program needed)
noremap <C-p> :GPickFile<CR>

" Php CS Fixer
nnoremap <silent><leader>p :call PhpCsFixerFixFile()<CR>

map <Leader>= :!cat % \| nc -l 5555 &<CR>:let @+='http://10.0.0.89:5555'<CR>
map <Leader>- :silent !gnome-terminal -x bash -c "cat % \| nc -l -k 5555 "<CR>

imap <A-;> <ESC>A;<CR>



map <Leader>ck :call RunKoans()<cr>f_

" }}}

" ==============================================================================
" Plugins
" ==============================================================================
" {{{

filetype off

if has('win32')
    "i don't want run all bundles on windows (it should be fast editor "
    call pathogen#infect('~/vimfiles/bundle-win')
else 
    call pathogen#infect()
endif

filetype plugin indent on
let g:snips_author = 'Jacek Wysocki'
let g:gist_detect_filetype = 1

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]

let g:vimwiki_list = [{'path': '~/.vim/wiki/'}]

" let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['js', 'html']
let g:syntastic_phpcs_disable=1 " it's annoying in CRM :)

let g:CommandTCaseSensitive=1
let g:CommandTNeverShowDotFiles=1

let g:DisableAutoPHPFolding=1



" PHP-cs-fixer git://github.com/stephpy/vim-php-cs-fixer.git
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.


" testing
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" }}}

" ==============================================================================
" Auto commands
" ==============================================================================
" {{{
autocmd VimEnter * set vb t_vb=

" Current line highlighting
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

let g:xml_syntax_folding=1
au FileType xml  setlocal foldmethod=syntax
au FileType vim  setlocal foldmethod=marker | setlocal foldlevel=0
au FileType lua  setlocal foldmethod=marker | setlocal foldlevel=0
au FileType php  setlocal foldmethod=syntax | setlocal foldlevel=99 | setlocal foldlevelstart=99
au FileType html setlocal foldmethod=syntax
au FileType ant  setlocal foldmethod=syntax
au FileType yaml setlocal foldmethod=indent | setlocal softtabstop=2 | setlocal shiftwidth=2 | setlocal tabstop=2
au FileType ruby setlocal foldmethod=syntax | setlocal softtabstop=2 | setlocal shiftwidth=2 | setlocal tabstop=2
au FileType python setlocal foldmethod=indent | setlocal softtabstop=4 | setlocal shiftwidth=4 | setlocal tabstop=4

au FileType eruby map <buffer> <C-?> <%=  %><C-o>2h
au FileType ruby map <buffer> <C-?> <%=  %><C-o>2h
" au FileType php  set omnifunc=phpcomplete#CompletePHP
" this sucks too 2 hours hand restore from SVN
" au FocusLost silent! :wa

au BufNewFile,BufRead *.god set filetype=ruby
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org

" au BufEnter *.org            call org#SetOrgFileType()
" }}}


" ==============================================================================
" Abbreviations
" ==============================================================================
" {{{

" My information
"I've always write it BAD
iab docuement document
iab Docuement Document
iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
iab xme <C-R> Jacek Wysocki
iab xME <C-R> Jacek Wysocki <jacek.wysocki@gmail.com>
iab xmail <C-R> jacek.wysocki@gmail.com
" }}}


" ==============================================================================
" GUI
" ==============================================================================
" {{{

" remove toolbar and scrollbars
set guioptions-=T
set guioptions-=L
set guioptions-=R
set guioptions-=r
set nohls
set nowrap
" vertically center cursor position
set scrolloff=5
set ch=2
" nice completition in command-line
set wildmenu
" always show status bar
set laststatus=2

if has("win32")
    set guifont=inconsolata:h13:cDEFAULT
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
    let g:Powerline_symbols = 'fancy'
    " git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
endif

set listchars=tab:»·,trail:· ",eol:¬
set listchars+=precedes:◀,extends:▶

set list

" set lcs=eol:¬
" set cursorline! "blinking on windows

set showbreak=········\ \ →\
set linebreak

set t_Co=256
syntax on
set hlsearch

if has("gui_running")
    colorscheme exu
else
    "colorscheme tir_black
    " some optimization in my colorscheme allow to use it on shell
    colorscheme exu
endif
" }}}


" ==============================================================================
" Hostname based configs
" ==============================================================================
" {{{

let hostfile=$HOME.'/.vim/machine/' . hostname() . '.vim'
if filereadable(hostfile)
    exe 'source ' . hostfile
endif

" }}}

