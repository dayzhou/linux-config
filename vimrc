set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" Keep Plugin commands between vundle#begin/end.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" fix folding
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

" auto-completion
Plugin 'Valloric/YouCompleteMe'

" Go auto-completion
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" Syntax checking and highlighting
Plugin 'scrooloose/syntastic'

" PEP8 checking
Plugin 'nvie/vim-flake8'

" color theme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" File browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" super searching
Plugin 'kien/ctrlp.vim'

" Git integration: use git in vim
Plugin 'tpope/vim-fugitive'

" status bar
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Distraction-free writing
Plugin 'junegunn/goyo.vim'

" Easy-Motion
Plugin 'easymotion/vim-easymotion'

" edit surroundings: (, [, {, ', ", <tag>, ...
Plugin 'tpope/vim-surround'

" repeat tool for plugin actions
Plugin 'tpope/vim-repeat'

" Minibuffer Explorer
Plugin 'fholgado/minibufexpl.vim'

" ultisnips: the snippets engine
Plugin 'SirVer/ultisnips'
" vim-snippets
Plugin 'honza/vim-snippets'

" auto delimit
Plugin 'Raimondi/delimitMate'

" light-as-air status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" tag bar
Plugin 'majutsushi/tagbar'

" ===== Other examples =====
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" ===== Other examples End =====

" All of your Plugins must be added before the following line
call vundle#end()

" see :h vundle for more details or wiki for FAQ
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line

filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on

" highlight the syntax
let python_highlight_all=1
syntax on

let g:SimpylFold_docstring_preview=1

let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <Leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" conditional theme
if has('gui_running')
"  set background=dark
"  colorscheme solarized
  colorscheme zenburn
"  call togglebg#map("<F5>")
else
  colorscheme zenburn
endif

" hide .pyc
let NERDTreeIgnore=['\.pyc$', '\~$']
map <C-n> :NERDTreeToggle<CR>

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

nnoremap <F5> :Goyo<CR>
nmap <F8> :TagbarToggle<CR>

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on
" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" set the file browser folder to be the current folder
set bsdir=buffer
" set encoding
set enc=utf-8
" set file encoding
set fenc=utf-8
" set file encoding type for scan
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" show line number
set nu!
" highlight the search results
set hlsearch
" enhance index feature
set tags=./tags,./../tags,./**/tags
" set line height
set cmdheight=1
" file saving format
set fileformats=unix,dos
" set spelling check
set spell

" tab width
set tabstop=2
" automatic indentation
set cindent shiftwidth=2
set autoindent shiftwidth=2
set expandtab

" when using a dark background
set background=dark
" highlight C++ syntax
" set syn=cpp
" C/C++ comment
" set comments=://
" fix automatic C style commenting feature <2005/07/16>
" set comments=s1:/*,mb:*,ex0:/

let mapleader=","
noremap <Leader>ww :w !sudo tee % > /dev/null<CR>
noremap <Leader>ps :vertical res 86<CR>
nnoremap <Leader>. :vertical res +1<CR>
nnoremap <Leader>, :vertical res -1<CR>
inoremap vv <ESC>
inoremap VV <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tmux color
" if exists('$TMUX')
"   set term=screen-256color
" endif


" Python

" Enable folding
set foldmethod=indent
set foldlevel=99
" folding with spacebar
nnoremap <space> za

" set a colored column to indicate line width limitation
set colorcolumn=82
highlight ColorColumn ctermbg=Black guibg=Black

" indentation
au BufRead,BufNewFile *.py
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set expandtab |
  \ set autoindent |
  \ set syn=python |
  \ set fileformat=unix

au BufRead,BufNewFile *.js,*.html,*.css
  \ set tabstop=2 |
  \ set shiftwidth=2 |
  \ set softtabstop=2


" no swap file
set noswapfile

" System clipboard
set clipboard=unnamed
