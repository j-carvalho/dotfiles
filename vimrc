set nocompatible              " be iMproved, required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
" language support
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'plasticboy/vim-markdown'
Plugin 'rdolgushin/gitignore.vim'
Plugin 'sheerun/vim-polyglot'

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

let g:one_allow_italics = 1 " I love italic for comments

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" set ruler background=dark
" colorscheme Tomorrow-Night
set background=dark
colorscheme onedark
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
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Markdown
let g:vim_markdown_folding_disabled=1

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,html.handlebars EmmetInstall
