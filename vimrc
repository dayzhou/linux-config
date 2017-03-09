set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" color theme
if has('gui_running')
  set background=dark
  colorscheme solarized
" call togglebg#map("<F5>")
endif

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on
" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on
" highlight the syntax
" syntax on

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
let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
map <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" indentation
au BufRead,BufNewFile *.py
  \ set shiftwidth=2 |
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set fileformat=unix |
  \ set autoindent |
  \ set expandtab |
  \ set textwidth=79 |
  \ set syn=python

au BufRead,BufNewFile *.js,*.html,*.css
  \ set tabstop=2 |
  \ set shiftwidth=2 |
  \ set softtabstop=2

" au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
" noremap <Leader>ew :EraseBadWhitespace<CR>

let python_highlight_all=1

" System clipboard
set clipboard=unnamed

