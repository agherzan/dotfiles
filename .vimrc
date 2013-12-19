set nocompatible    " Turn off compatibility.

" GUI Options
" ===========

set guioptions-=T   " No toolbar in Gvim.
set guioptions-=m   " No menubar in Gvim.
set winminheight=0  " No minimum window height.

set guifont=Droid\ Sans\ Mono\ 10
                    " Use a nice font if we've got a GUI available.

" Miscellaneous setup
" ===================

set mat=2           " Blink for 2/10 of a second.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Load all Vundle bundles.
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'lunaris/vim-vorpal'
Bundle 'mattn/zencoding-vim'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'

" Colour schemes / look and feel
" ==============================
Bundle 'sickill/vim-monokai'
Bundle 'noah/vim256-color'
Bundle 'shawncplus/skittles_berry'
Bundle 'trapd00r/neverland-vim-theme'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-vividchalk'

set t_Co=256        " Use 256 colours -- we should be OK in most cases.
colorscheme vividchalk

" Vimrc editing
" ==============

map <leader>e :e! ~/.vimrc<CR>
                  " Quick loading of .vimrc.

map <leader>s :so ~/.vimrc<CR>
                    " Quick saving of .vimrc.

autocmd! BufWritePost .vimrc source ~/.vimrc
                    " Automatically source .vimrc when it changes.

" Editing settings
" ================

set hidden          " Hide buffers rather than closing them.
set ruler           " Show the ruler.
set wildmenu        " Wildcard menu.
set cmdheight=1     " Command bar height is 1 line.
set number          " Line numbering.
set autoindent      " Always set automatic indenting on.
set tabstop=4       " Set the tabstop to be 2 characters.
set expandtab       " Always expand tabs to spaces.
set shiftwidth=4    " Set the tabstop to be 2 characters (autoindenting).
set shiftround      " Use multiple of shiftwidth when using '<' and '>'.

set backspace=eol,start,indent
                    " Allow backspacing over everything in insert mode.

syntax on           " Turn on syntax highlighting.

" Searching and substitution
" ==========================

set showmatch       " Show matching brackets.
set ignorecase      " Ignore case when searching.
set smartcase       " Search case-insensitive if the term is all lowercase,
                    " case-sensitive otherwise.
set incsearch       " Show search matches as you type.
set nohlsearch      " Disable search highlighting.

nnoremap <leader>nh :noh<CR>
                    " Easy clearing of searches.
nnoremap <tab> %
vnoremap <tab> %
                    " Use tab for moving between matching brackets.

vnoremap <M-/> <ESC>/\%V
                    " Lets us use <Alt-/> for quick searching within a
                    " selection.

" History and backups
" ===================

set history=400     " How many commands and searches to remember.
set undolevels=1000 " We want plenty of undo levels.
set nobackup        " We don't want to make backup files.
set noswapfile      " We don't want to make swap files.

" Terminal miscellany
" ===================

set title           " Change the terminal's title.
set shortmess+=I    " No welcome message.
set novisualbell    " Don't beep.
set noerrorbells    " Seriously, don't beep.
set t_vb=           " Please don't flash either.

set mouse=a         " We want the mouse please.

" Filetype stuff
" ==============

filetype on         " Peek into files to find their types.
filetype plugin on
filetype indent on

" Text wrapping and formatting
" ============================

set wrap            " Turn on text wrapping.
set textwidth=79    " Hard wrap at 80 characters.

func! DeleteTrailingWS()
  norm mz
  %s/\s\+$//ge
  norm `z
endfunc

map <leader>dw :call DeleteTrailingWS()<cr>
                    " Lets us delete trailing whitespace.

autocmd BufWrite * :call DeleteTrailingWS()
                    " Automatically delete trailing whitespace on saving.

map <leader>fd :set ff=dos<CR>:w<CR>
                    " Save in a DOS compatible format.
map <leader>fu :set ff=unix<CR>:w<CR>
                    " Save in a Unix compatible format.

" Digraphs
" ========

digraph TT 8868
digraph FF 8869

"Language specific
"=================
"CoffeScript
au BufRead,BufNewFile *.coffee set ft=coffee
