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

" NERD tree settings
Plugin 'scrooloose/nerdtree'
map <silent> <C-n> :NERDTreeFocus<CR>

" Easy Motion settings
Plugin 'Lokaltog/vim-easymotion'

" CtrlP settings
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

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
set laststatus=2
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Set Insert mode to allow the backspace key
" for deleting characters
set backspace=2

" Instead of using a tab, use 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
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
