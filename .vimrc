set nocompatible
set runtimepath^=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'

" Fuzzy search
NeoBundle 'rking/ag.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'Shougo/neomru.vim'

" File manager
NeoBundle 'scrooloose/nerdtree'

" Code completion
NeoBundle 'Shougo/neocomplete'

" Snippets
NeoBundle 'sirver/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mattn/emmet-vim'

" Comments
NeoBundle 'scrooloose/nerdcommenter'

" Indent
NeoBundle 'Yggdroot/indentLine'

" Syntax checker
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'bronson/vim-trailing-whitespace'

" Syntax & Language
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'shawncplus/phpcomplete.vim'
"NeoBundle 'm2mdas/phpcomplete-extended'
"NeoBundle 'm2mdas/phpcomplete-extended-laravel'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'xsbeats/vim-blade'
NeoBundle 'othree/html5.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'psykidellic/vim-jekyll'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'stephpy/vim-php-cs-fixer'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'rust-lang/rust.vim'

" Colorschemes
NeoBundle 'modess/vim-phpcolors'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'zenorocha/dracula-theme'
NeoBundle 'altercation/vim-colors-solarized'

" Motions & Cursor
NeoBundle 'goldfeld/vim-seek'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'terryma/vim-multiple-cursors'

" Misc
NeoBundle 'majutsushi/tagbar'
NeoBundle 'matchit.zip'
NeoBundle 'bling/vim-airline'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'wannesm/wmgraphviz.vim'
" NeoBundle 'sickill/vim-pasta'

call neobundle#end()

" Basic
syntax on
filetype on
filetype plugin indent on
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
" set autochdir
set completeopt=longest,menuone
set noerrorbells visualbell t_vb=

set wildmode=list:longest
set wildmenu " turn on wild menu
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*DS_Store*
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp

autocmd FileType ruby,eruby,coffee,yaml,scss,less setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Style
set t_Co=256
set linespace=4
if has('gui_running')
    set guifont=Monaco\ for\ Powerline:h15,Monaco:h15
    set clipboard=
    set guioptions-=T
    set guioptions-=c
    set guioptions-=m
endif

let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Keyboard Maps
let mapleader=','
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>cs :noh<CR>
noremap <leader>ss :%s/\s\+$//e<CR>
noremap <leader>W :w !sudo tee %<CR>
noremap <C-Q> <C-V>

" Ag
set grepprg=ag\ --nogroup
let g:ag_prg='ag --nogroup --nocolor --column'
let g:ag_working_path_mode='r'

" NERDTree
let NERDTreeShowHidden=0
let g:NERDTreeChristmasTree=1
let g:NERDTreeCaseSensitiveSort=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos='left'
let g:NERDTreeChDirMode=1
noremap <leader>. :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_new_tab=0

" CtrlP
let g:ctrlp_map='<C-P>'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_user_command = 'ag %s -l -S -U --nocolor --ignore-dir=images -g ""'
let g:ctrlp_use_caching = 0

" Airline
let g:airline_powerline_fonts=1

" neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#CompleteRuby

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'

" Tagbar
noremap <leader>t :TagbarToggle<CR>

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" vim-javascript
let javascript_enable_domhtmlcss=1
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType xml,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" vim-php-cs-fixer
let g:php_cs_fixer_level="psr2"
let g:php_cs_fixer_config="default"
let g:php_cs_fixer_php_path="php"
let g:php_cs_fixer_fixers_list="short_tag,return,linefeed,indentation,trailing_spaces,visibility,php_closing_tag,braces,extra_empty_lines,eof_ending"
let g:php_cs_fixer_enable_default_mapping=1
let g:php_cs_fixer_dry_run=0
let g:php_cs_fixer_verbose=0

" mru
noremap <leader>h :Unite file_mru<CR>

" php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
