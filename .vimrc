" ******************************************
" - .vimrc
" - Vundle is the exclusive package manager
" - all plugins works with Plugin convention
" - all config is in vimrc so it can be kept
"   nice and clean with out missing config 
" - all plugin config is at the bottom
" ******************************************

" Basic Rules
setlocal tabstop=2 shiftwidth=2 expandtab

" Vundle template settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" defaults
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
" Plugin 'bling/vim-airline'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
"Plugin 'airblade/vim-gitgutter'

" frontend development
Plugin 'scrooloose/syntastic'
"Plugin 'pangloss/vim-javascript'
"Plugin 'majutsushi/tagbar'
"Plugin 'othree/javascript-libraries-syntax.vim'

" snippets and prereqs
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
"Plugin 'SirVer/ultisnips'
" Optional:
Bundle "honza/vim-snippets"

"let g:UltiSnipsExpandTrigger="<tab>"

" experimenting
"Plugin 'Valloric/YouCompleteMe'

" may not need
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" *********************************
" visual config
"
syntax on
"set background=dark
"colorscheme distinguished

" *********************************
" NerdTree Config
"
"let NERDTreeQuitOnOpen=0

" *********************************
" airline configurations

"set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts=0
"let g:airline_theme='badwolf'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"
"
"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
"
" "unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'


let g:ctrlp_custom_ignore = 'node_modules'

au BufNewFile,BufRead *_spec.js set filetype=jasmine.javascript syntax=jasmine.javascript
