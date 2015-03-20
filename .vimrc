set nocompatible

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'

" Fuzzy search
NeoBundle 'rking/ag.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'Shougo/neomru.vim'

" File manager
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'scrooloose/nerdtree'

" Code completion
NeoBundle'Shougo/neocomplcache'
" NeoBundle 'Valloric/YouCompleteMe'

" Snippets
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'sirver/ultisnips'
NeoBundle 'honza/vim-snippets'

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
NeoBundle 'psykidellic/vim-jekyll'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'stephpy/vim-php-cs-fixer'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'

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
NeoBundle 'taglist.vim'
NeoBundle 'matchit.zip'
"NeoBundle 'bling/vim-airline'
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
set autochdir
set completeopt=longest,menuone
set noerrorbells visualbell t_vb=

set wildmenu "turn on wild menu
" set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
set wildignore+=*/.nx/**,*.app

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
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0

" Airline
let g:airline_powerline_fonts=1

" NeoComplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType tpl setfiletype html

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

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
" xmap <C-k> <Plug>(neosnippet_expand_target)

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
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:snips_author='likai'

" vim-javascript
let javascript_enable_domhtmlcss=1
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType xml,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" mru
noremap <leader>h :Unite file_mru<CR>

" vim-php-cs-fixer
let g:php_cs_fixer_level="psr2"
let g:php_cs_fixer_config="default"
let g:php_cs_fixer_php_path="php"
let g:php_cs_fixer_fixers_list="short_tag,return,linefeed,indentation,trailing_spaces,visibility,php_closing_tag,braces,extra_empty_lines,eof_ending"
let g:php_cs_fixer_enable_default_mapping=1
let g:php_cs_fixer_dry_run=0
let g:php_cs_fixer_verbose=0

" php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
