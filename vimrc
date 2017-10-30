call pathogen#infect()
nnoremap <M-n> :CtrlPTag<cr>

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set colorcolumn=81
set expandtab

" Automatically :write before running commands
set autowrite

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

" Nice spliting
set splitbelow
set splitright

" Searching
set incsearch
set hlsearch

let mapleader=","       " leader is comma
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Disable backup
set nobackup
set nowritebackup
set noswapfile

" Look & feel

" Colors
syntax enable
set background=light
colorscheme solarized

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
map <c-n> :NERDTreeToggle<CR>

" CtrlP
nnoremap <leader>p :CtrlPTag<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
" let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
