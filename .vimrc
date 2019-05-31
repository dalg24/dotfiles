set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
"Plugin 'jeaye/color_coded'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

colorscheme default

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent off
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		  " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
set mouse=a		  " Enable mouse usage (all modes)
"set smartindent		" Do smart indent in C++ file 

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=2

" Make command line two lines high
set ch=2

" set visual bell
set visualbell

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" Show the line in the file
set ruler

" Hide the mouse pointer while typing
set mousehide

" Keep some stuff in the history
set history=100

" When the pafe starts to scroll, keep the cursor 8lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to "invalide" places
set virtualedit=all

" Make the command-line completion better
set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 78 chars
set textwidth=80

" Turn tabs into spaces
set expandtab

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Fix constant spelling mistakes can be used to make some shortcuts
iab hte      the
iab Hte      The
iab teh      the
iab Teh      The
iab taht     that
iab Taht     That
iab alos     also
iab Alos     Also
iab aslo     also
iab Aslo     Also
iab becuase  because
iab Becuase  Because
iab bianry   binary
iab bianries binaries
iab Bianries Binaries
iab charcter character
iab Charcter Character
iab exmaple  example
iab Exmaple  Example
iab Exmaples Examples
iab exmaples examples
iab lenght   length
iab shoudl   should
iab Shoudl   Should
iab #i       #include

" Lets get crontab editing working
if $VIM_CRONTAB == 'true'
  set nobackup
  set nowritebackup
endif

" Nerd tree stuff open toggle, and close with tree window still open
map <C-t> :NERDTreeToggle<CR>
" Tagbar
map <C-l> :TagbarToggle<CR>
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Use custom file listing command with Ctrlp
let g:ctrlp_user_command = 'find %s -type f'

" Persistent undo
set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undodir