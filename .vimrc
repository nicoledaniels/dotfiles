set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

filetype plugin on
syntax on
set number

" Dracula Color Scheme
Plugin 'dracula/vim'

" FXF "
Plugin 'junegunn/fzf'
set rtp+=/usr/local/opt/fzf

" Syntastic settings
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" PHPQA "
Plugin 'joonty/vim-phpqa.git'
let g:phpqa_codesniffer_args = "--standard=/Volumes/CaseSensitive/mc-codesniffer-ruleset/MCStandard -d memory_limit=-1"
let g:phpqa_messdetector_autorun = 0

" NERD tree settings
Plugin 'scrooloose/nerdtree'
map <silent> <C-n> :NERDTreeFocus<CR>

" Easy Motion settings
Plugin 'Lokaltog/vim-easymotion'

" CtrlP settings
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files=0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Fugitive Vim settings
Plugin 'tpope/vim-fugitive'

" Neocomplache settings
Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1

" Snipmate settings
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" deLimitMate settings
Plugin 'Raimondi/delimitMate'

"vim-airline settings
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Enable the list of buffers "
let g:airline#extensions#tabline#enabled = 1
" Show just the filename"
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='murmur'
set laststatus=2
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Set Insert mode to allow the backspace key
" for deleting characters
set backspace=2

" Testing shortcuts
" rt = run tests
" rct = run current tests
noremap <leader>rt :! script/run-tests %<CR>

fun! RunCurrentTest()
  let lnum = line(".")
  let col = col(".")

  let line = getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  let matches = matchlist(line, '\vfunction (.+)\(')
  let current_test = matches[1]

  execute "! script/run-tests " . bufname("%") . ":" . current_test

  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun

noremap <leader>rct :call RunCurrentTest()<CR>

" VDebug config
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options["path_maps"] = { '/opt/mailchimp/current' : '/Volumes/CaseSensitive/mailchimp'}
let g:vdebug_options["server"] = "192.168.213.1"


" Instead of using a tab, use 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set cursorline
set wildmenu
set lazyredraw
set showmatch

" Searching
set incsearch
set hlsearch

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
