""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" First do the following in order to install Vundle, the plugin manager        "
"------------------------------------------------------------------------------"
"                                                                              "  
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
"                                                                              " 
"                                                                              " 
" On Mac install the latest version of Vim as follows                          "
" ===================================================                          "                          
"                                                                              "  
" brew install vim                                                             " 
"                                                                              "
" Add the following line to ~/.bash_profile                                    "
" ===========================================                                  "
" alias vim=/usr/local/Cellar/vim/8.0.0386/bin/vim                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Nerdtree plugin
Plugin 'scrooloose/nerdtree.git'
" Rainbow Paranthesis
Plugin 'kien/rainbow_parentheses.vim.git'
" Scala Syntax highlighting
Plugin 'derekwyatt/vim-scala.git'
" Commentary Plugin
Plugin 'tpope/vim-commentary.git'
" textobj-user plugin
Plugin 'kana/vim-textobj-user.git'
" textobj-entire plugin
Plugin 'kana/vim-textobj-entire.git'
" vim-unimpaired
Plugin 'tpope/vim-unimpaired.git'
" Matchit.vim
Plugin 'tmhedberg/matchit.git'
" Surround.vim
Plugin 'tpope/vim-surround.git'
" Solarized colors
Plugin 'altercation/vim-colors-solarized.git'
" Airline plugin for displaying open buffers top top
Plugin 'vim-airline/vim-airline'
" Themes for the Airline plugin
Plugin 'vim-airline/vim-airline-themes'
" To kill an open buffer without changing the layout
Plugin 'qpkorr/vim-bufkill.git'
" Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Ag plugin for searchin for lines in file
Plugin 'rking/ag.vim'
" For using Ag in Nerdtree
Plugin 'mortonfox/nerdtree-ag'
" For saving vim sessions
Plugin 'tpope/vim-obsession.git'
" For folding Python code
Plugin 'tmhedberg/SimpylFold'
" Python's PEP8 standard indentation
Plugin 'vim-scripts/indentpython.vim'

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
" autocmd VimEnter * RainbowParenthesesActivate
:set encoding=utf-8

au VimEnter,BufEnter * RainbowParenthesesActivate
au VimEnter,BufEnter * RainbowParenthesesLoadRound
au VimEnter,BufEnter * RainbowParenthesesLoadSquare
au VimEnter,BufEnter * RainbowParenthesesLoadBraces
:set nu
:set tw=80
:set ai
:set hlsearch
:set incsearch
:set shiftwidth=4 softtabstop=4 expandtab
:set cursorline
:set history=200

noremap <silent><esc> <esc>:noh<CR><esc>
noremap <silent><C-e> :NERDTreeToggle<cr>

syntax enable
set background=dark
colorscheme solarized
:set background=dark
:set modifiable
autocmd VimEnter * NERDTree

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='lucius'

" Mapping for closing buffer
noremap <C-c> :BD<cr>

" Mappings for switching to next and previous buffers, respectively
noremap <C-n> :bn<cr>
noremap <C-p> :bp<cr>
noremap <C-l> :set invnumber<cr>

let g:SimpylFold_docstring_preview = 1
"
" Indentation for python code
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" To make the nerdtree separator a vertical bar instead of showing pipes
:set fillchars+=vert:\ 
highlight VertSplit ctermbg=NONE
highlight VertSplit ctermfg=NONE

" For highlighting bad whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Indentation for full stack 
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set tabstop=2
    \ set softtabstop=2
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" By default searches with / would be case insensitive
" If a case-sensitive search is desired ass \C
set ignorecase
" Would automatically do a case sensitive search if uppercase is typed.
set smartcase
