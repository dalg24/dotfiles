set encoding=utf-8

syntax on
set backspace=2

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()

Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/ListToggle'
"Plug 'jeaye/color_coded'
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'majutsushi/tagbar'
""Plug 'kien/ctrlp.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'bogado/file-line'
Plug 'martinda/Jenkinsfile-vim-syntax'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Turn tabs into spaces
set expandtab

" Highlight unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" Configure clang-format
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 1
let g:clang_format#command = "/opt/local/bin/clang-format"

" Configure ctags
let g:tagbar_ctags_bin = "/opt/local/bin/ctags"
let g:tagbar_ctags_options = ["/Users/qdi/Projects/isocpp/gcc/libstdc++-v3/myopts.cfn"]

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if has('gui_running')
  set background=light
else
  set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized
" Toggle background
call togglebg#map("<F5>")

" Localvimrc
let g:localvimrc_ask = 0

" Temporary swap and backup files
set backup
set backupdir^=$HOME/.vim/tmp//
set directory^=$HOME/.vim/tmp//
set undodir^=$HOME/.vim/tmp//

" Ctrl-p searches using fzf
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-b> :Buffers<Cr>
nnoremap <C-g> :Ag<Cr>
let g:fzf_history_dir = '~/.local/share/fzf-history'
