set nocompatible

filetype off
let $VIMFILES=$HOME.'/.vim'
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()

Bundle 'L9'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" AutoCompole
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'mattn/emmet-vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'

" File manager
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'mru.vim'

" Syntax
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'tlikai/phpvim'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'markwu/vim-laravel4-snippets'
Bundle 'xsbeats/vim-blade'

" Colorscheme
Bundle 'altercation/vim-colors-solarized'

" Misc
Bundle 'Shougo/unite.vim'
Bundle 'bling/vim-airline'
Bundle 'taglist.vim'
Bundle 'matchit.zip'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'Yggdroot/indentLine'
Bundle 'terryma/vim-expand-region'
Bundle 'terryma/vim-multiple-cursors'

" Basic
syntax on
filetype on
filetype plugin indent on
set nocompatible
set wildmenu
set ttyfast

" Editing & Encoding
set cursorline
set fileformat=unix
set fileformats=unix,dos,mac
set encoding=utf-8 nobomb
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb2312
set langmenu=zh_CN.utf-8
language message zh_CN.utf-8

" Tab
set autoindent
set cindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Match
set magic
set incsearch
set ignorecase
set nohlsearch
set matchpairs+=<:>

" Ime
" set noimdisable
set iminsert=0
set imsearch=0

" Folding
set foldenable  " default enable fold
set foldmethod=marker   " fold by marker

" Layout
set title
set hidden
set showcmd
set laststatus=2
set ruler
set number

" Misc
set nostartofline
set showmatch
set mouse=a
set clipboard=unnamed
set pumheight=15
set backspace=indent,eol,start
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set autoread
set modeline
set modelines=4
set autochdir

set noerrorbells
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp

" Style
set t_Co=256
set linespace=4
set background=dark
colorscheme solarized
if has('gui_running')
    set guifont=Monaco\ for\ Powerline:h12,Monaco:h12
    set clipboard=
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
endif

" Keyboard Maps
let mapleader=','
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
noremap <leader>cs :noh<CR>
noremap <leader>ss :%s/\s\+$//e<CR>
noremap <leader>W :w !sudo tee %<CR>
noremap <C-Q> <C-V>

" Helpers
autocmd FileType c nmap <leader><leader>r :!cc -o "%:p:r" "%:p" && "%:p:r"<CR>

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=40
let g:NERDTreeChDirMode=1
noremap <leader>. :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map='<C-P>'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Airline
let g:airline_powerline_fonts=1

" NeoComplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" Tags & Taglist
set tags+=$HOME/.ctags
set tags+=$PWD/.ctags
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1

noremap <leader>t :TlistToggle<CR>

" Neosnippet
" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility=1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory=$VIMFILES.'/bundle/vim-snippets/snippets'
let g:snips_author=''

" vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" mru
noremap <leader>h :MRU<CR>

" vim-php-cs-fixer
let g:php_cs_fixer_level="all"                  " which level ?
let g:php_cs_fixer_config="default"             " configuration
let g:php_cs_fixer_php_path="php"               " Path to PHP
let g:php_cs_fixer_fixers_list=""               " List of fixers
let g:php_cs_fixer_enable_default_mapping=1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run=0                    " Call command with dry-run option
let g:php_cs_fixer_verbose=0
