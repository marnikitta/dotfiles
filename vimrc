call pathogen#infect()

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=120
set colorcolumn=81
set expandtab

" Enncoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,latin1

set number
set relativenumber
set showcmd
filetype indent on

set wildmenu
set lazyredraw
set noerrorbells

" Searching
set incsearch
set hlsearch

let mapleader=","       " leader is comma
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

set backup
set backupdir=~/.vim-backup
set directory=~/.vim-tmp
set writebackup

" Create directories, if required.
if !isdirectory(expand("$HOME/.vim-backup"))
	call mkdir(expand("$HOME/.vim-backup"), "p", 0700)
endif
if !isdirectory(expand("$HOME/.vim-tmp"))
	call mkdir(expand("$HOME/.vim-tmp"), "p", 0700)
endif

" Look & feel

" Colors
syntax enable
set background=dark
colorscheme base16-default-dark

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                    " Buffer number
set statusline+=%f\                        " File name
set statusline+=%h%m%r%w                   " Flags (help, modified, read-only, preview)
set statusline+=\[                         " Opening bracket
set statusline+=%{strlen(&ft)?&ft:'none'}, " File type
set statusline+=%{&encoding},              " Encoding
set statusline+=%{&fileformat}             " File format
set statusline+=\]\                        " Closing bracket
set statusline+=%=                         " Right align
set statusline+=%b\ /\ 0x%04B              " Current character (decimal / hexadecimal)
set statusline+=\ \ \ \                    " Padding
set statusline+=%-14.(%l,%c%V%)\ %<%P      " Offset

" PLUGINS CONFIGS

" Nerd tree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip