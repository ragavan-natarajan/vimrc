""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" First do the following in order to install Vundle, the plugin manager        "
"------------------------------------------------------------------------------"
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
"                                                                              "
"                                                                              "
" On Mac install the latest version of Vim as follows                          "
" brew install vim                                                             "
"                                                                              "
" Add the following line to ~/.bash_profile                                    "
" ===========================================                                  "
" alias vim=/usr/local/Cellar/vim/8.0.0386/bin/vim                             "
"                                                                              "
" Do the following to install YouCompleteMe                                    "
" =========================================                                    "
" sudo apt-get -y install python-dev python3-dev                               "
" sudo apt-get -y install build-essential cmake                                "
"                                                                              "
"       If the installation with Vundle got stuck, then do the following       "
"       ----------------------------------------------------------------       "
"       cd ~/.vim/bundle/YouCompleteMe                                         "
"       git submodule update --init --recursive                                "
"                                                                              "
" Even if vundle got successful, the following should be run                   "
" ----------------------------------------------------------                   "
" cd ~/.vim/bundle/YouCompleteMe                                               "
"                                                                              "
" ./install.py --all                                                           "
"           or                                                                 "
" ./install.py --clang-complete                                                "
"
" To install Go binaries required by the vim-go plugin, do the following
"
" :GoInstallBinaries
"
" Black
" -----
" You will need python3.8-venv to install black. So if the black plugin
" installation fails, make sure you do 'sudo apt-get install python3.8-venv'
" and remove the black directory inside .vim and reattempt :PluginInstall
" 
" Do the following only if Plugininstall failed for black
" More info here: https://github.com/psf/black/issues/1293
" source ~/.vim/black/bin/activate
" pip install --upgrade git+https://github.com/psf/black.git
"                                                                              "
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
" Plugin 'luochen1990/rainbow'
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
" YouCompleteMe code completion 
Plugin 'Valloric/YouCompleteMe.git'
" SingleCompile plugin for Compiling and running C++ programs
Plugin 'xuhdev/SingleCompile'
" Plugin for LaTeX on vim 
Plugin 'lervag/vimtex'
" Plugin for Go development on vim
Plugin 'fatih/vim-go'
" Plugin for black for Python code formatting according to PEP 8.
Plugin 'psf/black'


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

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter,BufEnter * RainbowParenthesesLoadRound
au VimEnter,BufEnter * RainbowParenthesesLoadSquare
au VimEnter,BufEnter * RainbowParenthesesLoadBraces
au VimEnter,BufEnter * RainbowParenthesesActivate
"let g:rainbow_active = 1

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

" To set the NERDTree separator to 15 characters width
:let g:NERDTreeWinSize=22

" For highlighting bad whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.dockerfile set filetype=dockerfile

" Indentation for full stack
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2

" By default searches with / would be case insensitive
" If a case-sensitive search is desired ass \C
set ignorecase
" Would automatically do a case sensitive search if uppercase is typed.
set smartcase

" Required by YouCompleteMe for c-lang completion
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

" The following mappings enables C++ code to be compiled and run.
" It requires the plugin 'xuhdev/SingleCompile' to be installed.
nmap <C-m> :SCCompileAF -std=c++11 -Werror -Wall<cr><cr>
nmap <C-x> :SCCompileRunAF -std=c++11<cr><cr>

" To highlight column after textwidth
set colorcolumn=+1 
highlight ColorColumn ctermbg=cyan ctermfg=red

" Disable client server callback for vimtex
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:tex_flavor = 'latex'

" Reset CTRL+U and CTRL+D to default scrolling 
set scroll=0
" Enables spell checking. ]s and [s could be used to check forward and backward
" respectively.
set spell spelllang=en_us

" This option enables to select an nth character even if the line is not that
" long. This is useful, for example, if you would like to draw a vertical line
" to mark a column separator in a table of varying line lengths. This could be
" turned off by :set virtualedit=
set virtualedit=all

set autowrite

" command! Black :py3 Black()
" command! BlackUpgrade :py3 BlackUpgrade()
" command! BlackVersion :py3 BlackVersion()
