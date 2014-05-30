"=================================================================================== 
" Editor Settings
"=================================================================================== 

  " Syntax colors
    syntax on

  " Remapping jj to escape insert mode
    inoremap jk <Esc>

  " Tab and space stuff
    set expandtab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2

  " Pathogen
    execute pathogen#infect()

  " Enable 256 colors
    set t_Co=256

  " ColorScheme
    colorscheme vimbrant

  " Automatically set working directory to be of file working on
    autocmd BufEnter * silent! lcd %:p:h
 
  " Bunch of general stuff
    set nowrap " Don't wrap lines
    set backspace=indent,eol,start " Allow backspacing over everything in insert mode
    set autoindent "always set autoindenting
    set copyindent "copy with autoindenting
    set nonumber "Don't show line numbers
    set showmatch "show matching parens
    set ignorecase "ignore case when searching
    set smartcase "ignore case lowercase, case-sensitive otherwise
    set smarttab "insert smart tabs
    set hlsearch "highlight search terms
    set incsearch "show matches as you type
    set nocompatible "Vim only
    set modelines=0 "Security thing
    set undofile "allows undo commands all the time
    set scrolloff=5 "allows some context between search result cycles
    set encoding=utf-8 "vim encoding
    set noshowmode "don't show current mode - vim-airline instead
    set showcmd "bottom screen info
    set laststatus=2 "bar at bottom
    set hidden "Hides files instead of closing - avoids !
    set wildmenu "Menu for command line options
    set wildmode=list:longest,full "Helps with completion in wildmode
    set visualbell "Stop the annoying sounds 
    set cursorline "Highlights current line
    set ttyfast "redraw with more characters - speed
    set ruler "cursor position
    filetype off  "added from vundle instructions
    "set relativenumber "Show how many lines away from current - Easy Motion instead


"=================================================================================== 
" Vundle Settings
"=================================================================================== 
  set rtp+=~/.vim/bundle/Vundle.vim "set the runtime path to include Vundle and initialize

  call vundle#begin() " alternatively, pass a path where Vundle should install plugins - call vundle#begin('~/some/path/here')

  " The following are examples of different formats supported.
    " plugin on GitHub repo - Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html - Plugin 'L9'
    " Git plugin not hosted on GitHub - Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin) - Plugin 'file:///home/gmarik/path/to/plugin'
    "
    Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
    Plugin 'Shougo/unite.vim.git' " Unite Plugin


  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

"=================================================================================== 
" Keybindings 
"=================================================================================== 

  " Autosave when focus is lost
    au FocusLost * :wa

  " Change <leader> key
    let mapleader=","

  " Quickly edit/source vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :source $MYVIMRC<CR>

  " Changes commands like :w to use ;w keys
    nnoremap ; :

  " TComment
    nmap <leader>c <C-_><C-_> ":TComment

  " Clearing highlighted searches
    nmap <silent> ,/ :nohlsearch<CR>

  " Sudo after file is already open
    cmap w!! w !sudo tee % >/dev/null

  " tab to match bracket pairs
    nnoremap <tab> %
    vnoremap <tab> %

  " Unite Commands
    nnoremap <leader>d :<C-u>Unite -no-split -buffer-name=buffer -start-insert buffer<CR>
    nnoremap <leader>ff :<C-u>Unite -no-split -buffer-name=files -start-insert file<CR>
    nnoremap <leader>y :Unite -no-split -buffer-name=yank history/yank<CR>



"=================================================================================== 
" Plugin Settings 
"=================================================================================== 

  " Unite enable yank history
    let g:unite_source_history_yank_enable = 1


