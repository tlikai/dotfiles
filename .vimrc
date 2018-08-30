set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

" Fuzzy search
Plug 'rking/ag.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" File manager
Plug 'scrooloose/nerdtree'

" Code completion
Plug 'Shougo/neocomplete'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Comments
Plug 'scrooloose/nerdcommenter'

" Indent
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'

" Linter
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Syntax & Language
Plug 'StanAngeloff/php.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'stephpy/vim-php-cs-fixer'

Plug 'elzr/vim-json'
Plug 'xsbeats/vim-blade'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/javascript-libraries-syntax.vim'

Plug 'plasticboy/vim-markdown'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'ecomba/vim-ruby-refactoring'

Plug 'janko-m/vim-test'
Plug 'psykidellic/vim-jekyll'
Plug 'Chiel92/vim-autoformat'
Plug 'rust-lang/rust.vim'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'

" Motions & Cursor
Plug 'goldfeld/vim-seek'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'haya14busa/incsearch.vim'

" Misc
Plug 'majutsushi/tagbar'
Plug 'matchit.zip'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'Raimondi/delimitMate'
Plug 'thinca/vim-quickrun'
Plug 'Shougo/vimshell.vim'
" Plug 'amirh/HTML-AutoCloseTag'
Plug 'myusuf3/numbers.vim'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-eunuch'
" Plug 'sickill/vim-pasta'

call plug#end()

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
set fileencodings=utf-8
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
"set clipboard+=unnamedplus
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

if has("termguicolors")
    set termguicolors
endif

let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
set background=dark
"colorscheme solarized
colorscheme onedark

" Keyboard Maps
let mapleader=','
noremap <leader>rc :e $MYVIMRC<CR>
noremap <leader>rrc :source $MYVIMRC<CR>
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

" onedark
let g:onedark_terminal_italics=1

" lightline
let g:lightline = { 'colorscheme': 'onedark' }

" FZF
map <C-P> :Files<CR>

" neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

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
let g:UltiSnipsEditSplit="vertical"

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

" Ruby rubocop
let g:syntastic_ruby_rubocop_exec="/usr/local/bin/rubocop-wrapper.sh"

" vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>ll :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" EasyMotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
