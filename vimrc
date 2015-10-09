set nocompatible              " be iMproved, required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
" language support
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set lazyredraw
set ttyfast
set ttymouse=xterm2
set ttyscroll=3
set nocursorline
set nocursorcolumn
set t_ut=
set noswapfile
set nobackup
set nowritebackup
set relativenumber

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Performance attempts
let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
let html_no_rendering=1 " Don't render italic, bold, links in HTML

" Hide srollbars in GUI
set guioptions-=T
set guioptions-=r

syntax on
colorscheme Tomorrow-Night
set ruler background=dark
set statusline=%<\ %n:%f\ %m%r%y%=%-30.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2

set list listchars=tab:»·,trail:·
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set scrolloff=3
set autoindent

" Numbers
set number

" Words
set gdefault
set shiftround
set nowrap

" Search
set incsearch hlsearch ignorecase smartcase

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }

" Ctrlp
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

" Markdown
let g:vim_markdown_folding_disabled=1

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,html.handlebars EmmetInstall
