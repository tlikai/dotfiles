set nocompatible

" vundle configure
filetype off
if (has("win32") || has("win64"))
    source $VIMRUNTIME/mswin.vim
    let $HOME=$USERPROFILE
endif
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" require
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'

" code
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'godlygeek/tabular'
Bundle 'rosenfeld/conque-term'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle "garbas/vim-snipmate"
Bundle 'ZenCoding.vim'
Bundle 'taglist.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'matchit.zip'
Bundle 'Lokaltog/vim-easymotion'

" file
Bundle 'The-NERD-tree'
Bundle 'FuzzyFinder'
Bundle 'mru.vim'

" syntax
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'phpvim'

" colorscheme
Bundle 'jelera/vim-powerline'
Bundle 'jelera/vim-nazca-colorscheme'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'altercation/vim-colors-solarized'
Bundle 'peaksea'
Bundle 'Zenburn'
Bundle 'tango.vim'

" global
filetype on
filetype plugin indent on
syntax on
set number
set numberwidth=4
set title
set hidden
set noimdisable
set iminsert=0
set imsearch=0
set nostartofline
set scrolljump=10
set foldenable
set backspace=indent,eol,start
set mouse=a
set showmatch
set autochdir
set autoread
set laststatus=2
"set relativenumber
set ruler
set showcmd
set cursorline
set sidescrolloff=20
"set pumheight=10

" search
set magic
set incsearch
set hlsearch
set ignorecase
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set noerrorbells
set matchpairs+=<:>

" tab
set autoindent
set cindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" misc
set history=1000
set undolevels=1000
set nobackup
set noswapfile

" encoding
set enc=utf-8
set termencoding=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" fileformat
set fileformat=unix
set fileformats=unix,dos,mac

" font and theme
set t_Co=256
set linespace=4
set background=dark
colorscheme solarized

if has('gui_running')
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
    set guifont=Monaco\ for\ Powerline:h12, Monaco:h12
endif

if exists('+breakindent')
    set breakindent
endif

" Plugin configure

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" Zencoding
let g:user_zen_settings={
\    'php' : {
\        'extends' : 'html'
\    },
\    'lang' : 'zh',
\    'charset' : 'utf-8'
\}

" powerline
let g:Powerline_symbols='fancy'

" autocomplete
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1

" maps
let mapleader = ','
let g:mapleader = ','
nmap <tab> v>
nmap <s-tab> v<
nmap <leader>. :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>h :MRU<CR>
nmap <leader>f :FufFile<CR>
nmap <leader>fd :FufDir<CR>
nmap <leader>vimrc :e $VIMFILES/vimrc<CR>
nmap <leader>bash :ConqueTermSplit bash<CR>
nmap <leader>ct :!ctags -R ./<CR>
nmap <leader>cs :noh<CR>
noremap <C-V> <C-Q>
noremap <leader>W :w !sudo tee %<CR>
noremap <leader>ss :%s/\s\+$//e<CR>

" load template on new
autocmd BufNewFile *.php  0r $VIMFILES/template/template.php
autocmd BufNewFile *.html  0r $VIMFILES/template/template.html
set nocompatible

" vundle configure
filetype off
if (has("win32") || has("win64"))
    source $VIMRUNTIME/mswin.vim
    let $HOME=$USERPROFILE
endif
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" require
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'

" code
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'godlygeek/tabular'
Bundle 'rosenfeld/conque-term'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle "garbas/vim-snipmate"
Bundle 'ZenCoding.vim'
Bundle 'taglist.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'matchit.zip'
Bundle 'Lokaltog/vim-easymotion'

" file
Bundle 'The-NERD-tree'
Bundle 'FuzzyFinder'
Bundle 'mru.vim'

" syntax
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'phpvim'

" colorscheme
Bundle 'jelera/vim-powerline'
Bundle 'jelera/vim-nazca-colorscheme'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'altercation/vim-colors-solarized'
Bundle 'peaksea'
Bundle 'Zenburn'
Bundle 'tango.vim'

" global
filetype on
filetype plugin indent on
syntax on
set number
set numberwidth=4
set title
set hidden
set noimdisable
set iminsert=0
set imsearch=0
set nostartofline
set scrolljump=10
set foldenable
set backspace=indent,eol,start
set mouse=a
set showmatch
set autochdir
set autoread
set laststatus=2
"set relativenumber
set ruler
set showcmd
set cursorline
set sidescrolloff=20
"set pumheight=10

" search
set magic
set incsearch
set hlsearch
set ignorecase
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set noerrorbells
set matchpairs+=<:>

" tab
set autoindent
set cindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" misc
set history=1000
set undolevels=1000
set nobackup
set noswapfile

" encoding
set enc=utf-8
set termencoding=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" fileformat
set fileformat=unix
set fileformats=unix,dos,mac

" font and theme
set t_Co=256
set linespace=4
set background=dark
colorscheme solarized

if has('gui_running')
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
    set guifont=Monaco\ for\ Powerline:h12, Monaco:h12
endif

if exists('+breakindent')
    set breakindent
endif

" Plugin configure

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" Zencoding
let g:user_zen_settings={
\    'php' : {
\        'extends' : 'html'
\    },
\    'lang' : 'zh',
\    'charset' : 'utf-8'
\}

" powerline
let g:Powerline_symbols='fancy'

" autocomplete
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1

" maps
let mapleader = ','
let g:mapleader = ','
nmap <tab> v>
nmap <s-tab> v<
nmap <leader>. :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>h :MRU<CR>
nmap <leader>f :FufFile<CR>
nmap <leader>fd :FufDir<CR>
nmap <leader>vimrc :e $VIMFILES/vimrc<CR>
nmap <leader>bash :ConqueTermSplit bash<CR>
nmap <leader>ct :!ctags -R ./<CR>
nmap <leader>cs :noh<CR>
noremap <C-V> <C-Q>
noremap <leader>W :w !sudo tee %<CR>
noremap <leader>ss :%s/\s\+$//e<CR>

" load template on new
autocmd BufNewFile *.php  0r $VIMFILES/template/template.php
autocmd BufNewFile *.html  0r $VIMFILES/template/template.html
set nocompatible

" vundle configure
filetype off
if (has("win32") || has("win64"))
    source $VIMRUNTIME/mswin.vim
    let $HOME=$USERPROFILE
endif
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

" require
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'

" code
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'godlygeek/tabular'
Bundle 'rosenfeld/conque-term'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle "garbas/vim-snipmate"
Bundle 'ZenCoding.vim'
Bundle 'taglist.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'matchit.zip'
Bundle 'Lokaltog/vim-easymotion'

" file
Bundle 'The-NERD-tree'
Bundle 'FuzzyFinder'
Bundle 'mru.vim'

" syntax
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'phpvim'

" colorscheme
Bundle 'jelera/vim-powerline'
Bundle 'jelera/vim-nazca-colorscheme'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'altercation/vim-colors-solarized'
Bundle 'peaksea'
Bundle 'Zenburn'
Bundle 'tango.vim'

" global
filetype on
filetype plugin indent on
syntax on
set number
set numberwidth=4
set title
set hidden
set noimdisable
set iminsert=0
set imsearch=0
set nostartofline
set scrolljump=10
set foldenable
set backspace=indent,eol,start
set mouse=a
set showmatch
set autochdir
set autoread
set laststatus=2
"set relativenumber
set ruler
set showcmd
set cursorline
set sidescrolloff=20
"set pumheight=10

" search
set magic
set incsearch
set hlsearch
set ignorecase
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set noerrorbells
set matchpairs+=<:>

" tab
set autoindent
set cindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" misc
set history=1000
set undolevels=1000
set nobackup
set noswapfile

" encoding
set enc=utf-8
set termencoding=utf-8
set fenc=utf-8
set fencs=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" fileformat
set fileformat=unix
set fileformats=unix,dos,mac

" font and theme
set t_Co=256
set linespace=4
set background=dark
colorscheme solarized

if has('gui_running')
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
    set guifont=Monaco\ for\ Powerline:h12, Monaco:h12
endif

if exists('+breakindent')
    set breakindent
endif

" Plugin configure

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=2

" Zencoding
let g:user_zen_settings={
\    'php' : {
\        'extends' : 'html'
\    },
\    'lang' : 'zh',
\    'charset' : 'utf-8'
\}

" powerline
let g:Powerline_symbols='fancy'

" autocomplete
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" taglist
set tags=$HOME/.tags
set tags+=$PWD/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Update = 1

" maps
let mapleader = ','
let g:mapleader = ','
nmap <tab> v>
nmap <s-tab> v<
nmap <leader>. :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>h :MRU<CR>
nmap <leader>f :FufFile<CR>
nmap <leader>fd :FufDir<CR>
nmap <leader>vimrc :e $VIMFILES/vimrc<CR>
nmap <leader>bash :ConqueTermSplit bash<CR>
nmap <leader>ct :!ctags -R ./<CR>
nmap <leader>cs :noh<CR>
noremap <C-V> <C-Q>
noremap <leader>W :w !sudo tee %<CR>
noremap <leader>ss :%s/\s\+$//e<CR>

" load template on new file
autocmd BufNewFile *.php  0r $VIMFILES/template/template.php
autocmd BufNewFile *.html  0r $VIMFILES/template/template.html
