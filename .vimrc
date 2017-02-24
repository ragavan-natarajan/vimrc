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
Plugin 'https://github.com/scrooloose/nerdtree.git'
" Rainbow Paranthesis
Plugin 'https://github.com/kien/rainbow_parentheses.vim.git'
" Scala Syntax highlighting
Plugin 'https://github.com/derekwyatt/vim-scala.git'
" Commentary Plugin
Plugin 'https://github.com/tpope/vim-commentary.git'
" textobj-user plugin
Plugin 'https://github.com/kana/vim-textobj-user.git'
" textobj-entire plugin
Plugin 'https://github.com/kana/vim-textobj-entire.git'
" vim-unimpaired
Plugin 'https://github.com/tpope/vim-unimpaired.git'
" Matchit.vim
Plugin 'https://github.com/tmhedberg/matchit.git'
" Surround.vim
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
" Airline plugin for displaying open buffers top top
Plugin 'vim-airline/vim-airline'
" Themes for the Airline plugin
Plugin 'vim-airline/vim-airline-themes'
" To kill an open buffer without changing the layout
Plugin 'https://github.com/qpkorr/vim-bufkill.git'
" Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Ag plugin for searchin for lines in file
Plugin 'rking/ag.vim'
" For using Ag in Nerdtree
Plugin 'mortonfox/nerdtree-ag'
" For saving vim sessions
Plugin 'tpope/vim-obsession.git'

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
:set history=200

noremap <silent><esc> <esc>:noh<CR><esc>
noremap <silent><C-e> :NERDTreeToggle<cr>

syntax enable
set background=light
colorscheme solarized
set modifiable
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
