filetype off

" Bundles {{{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'

Bundle 'altercation/vim-colors-solarized'
Bundle 'flazz/vim-colorschemes'

Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'vim-scripts/taglist.vim.git'
Bundle 'Lokaltog/vim-easymotion.git'
Bundle 'kshenoy/vim-signature.git'
Bundle 'kien/ctrlp.vim'
" }}}

filetype plugin indent on
syntax on
set nocompatible

let mapleader = ","
let maplocalleader = ","

" Basic options {{{
set encoding=utf-8
set splitbelow
set splitright
set scrolloff=3
set showmode
set showcmd
set switchbuf=useopen
set ruler
set number
set autochdir
set wildmenu
set nobackup
set hidden
set display=uhex
set visualbell
set noerrorbells
set printoptions=paper:letter,right:1in,left:54pt,wrap:y,duplex:long
" }}}

" Searching, moving {{{
set gdefault
set incsearch
set hlsearch
set showmatch
set ignorecase smartcase
" nnoremap / /\v
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <tab> %
vnoremap <tab> %
" }}}
"
" Tabs etc {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set sta
set expandtab
" }}}

" Mappings {{{

" Window movement 
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" Window resizing
map <silent> <A-h> <C-w><
map <silent> <A-H> 7<C-w><

map <silent> <A-j> <C-W>-
map <silent> <A-J> 7<C-W>-

map <silent> <A-k> <C-W>+
map <silent> <A-K> 7<C-W>+

map <silent> <A-l> <C-w>>
map <silent> <A-L> 7<C-w>>

" clipboard copy/paste 
vmap <Leader>c "+y
map <Leader>v "+gp
map <Leader>V "+gP
" }}}

" VimClojure, slimv {{{
"let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = "/home/davidc/bin/ng"
"let vimclojure#ParenRainbow = 1
"let vimclojure#HighlightBuiltins = 1
"let vimclojure#HighlightContrib = 1
"let g:slime_target = "tmux"
"let tlist_clojure_settings = 'lisp;f:function'
"
"let g:lisp_rainbow = 1
"let g:slimv_keybindings = 1
"let g:slimv_impl = 'sbcl'
"let g:slimv_preferred = 'sbcl'
"let g:slimv_repl_split = 4
" let g:slimv_clhs_root = "file:///usr/share/doc/hyperspec"
" }}}

" Taglist {{{
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
" }}}

" NERD Tree {{{
nnoremap <silent> <Leader>t :NERDTreeToggle<cr>
" }}}

" Tags {{{
set tags=./tags,./TAGS,tags,TAGS,../tags,../TAGS,.../tags,.../TAGS
" }}}

" Appearance {{{
"colors jellybeans
set background=dark
colors solarized
let g:solarized_termtrans=1

"set gfn=Droid\ Sans\ Mono\ 10 
set gfn=Source\ Code\ Pro\ Medium\ 10
" }}}

" git bindings {{{
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>ge :Gedit<cr>
nmap <silent> <leader>gd :Gdiff<cr>
nmap <silent> <leader>gp :Git push<cr>
let g:Gitv_OpenHorizontal = 1
nmap <silent> <leader>gv :Gitv<cr>
nmap <silent> <leader>gV :Gitv --all<cr>
" }}}

" Abbreviations {{{
"
" }}}

" Folding {{{
"set foldmethod=indent
"set foldnestmax=10
"set nofoldenable
"set foldlevel=1
" }}}

" Local config {{{
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
" }}}
