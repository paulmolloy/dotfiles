"Plugin setup
call plug#begin('~/.vim/plugged')

"Plugin list"
Plug 'sheerun/vim-polyglot'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set laststatus=2
"set number

" Type space and then s to reload vimrc.
let mapleader=" "
map <leader>s : source ~/.vimrc<cr>
syntax on

"copy with line numbers on with mouse.
" Might delete this.
set clipboard=unnamedplus
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
"show the commands being typed.
set showcmd
" Highlight searches
set hlsearch

"convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
" show bell when doing something wrong.
set visualbell

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
"set cmdheight=2
"Used to stop A B C appearing if I accidentally used the arrow keys.
"set nocompatible

