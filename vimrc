" .vimrc

filetype on
syntax enable 

set hidden " Turn off warning about unsaved buffers

" With a map leader it's possible to do extra key combinations
" for example <leader>w saves the current file
let mapleader = ","

" NERDTree
" Open automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mappings
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>f :NERDTreeFind<CR>

" Improve buffer navigation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Improve split window navigation
" Use ctrl-[hjkl] to select the active split
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" XML editing
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Search down into subfolders
" Provide tab completion for all file related tasks
" Use :find and tab for partial matching, * for fuzzy matching
set path+=**

" Display all matching files when using tab complete
set wildmenu

" See line numbers
set number
