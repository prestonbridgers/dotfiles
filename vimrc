set laststatus=2
set noshowmode
set relativenumber
set nu
set ruler
set incsearch
set noerrorbells
set colorcolumn=80
set noswapfile
set nowrap
set scrolloff=8
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set background=dark
set path+=**
set wildmenu

syntax enable


"" vundle config
set nocompatible              " be iMproved, required
filetype off                  " required
"" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.config/vim/bundle/Vundle.vim
call vundle#begin("$HOME/.config/vim/bundle/")
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/c.vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

" This must be after the vundle plugins
let g:gruvbox_italic=1
colorscheme gruvbox

" Tags
command! MakeTags !ctags -R .
command! MakeHTags !hasktags --ctags .
command! Xs :mks! | :xa "save the session, save modified files, and exit

" Keybinds
nnoremap <C-e>  : b#<CR>
nnoremap <C-n>  : NERDTree<CR>
vnoremap <C-t>  : Tabularize<Space>/
vnoremap <C-e>  : Tabularize<Space>/=<CR>
vnoremap <C-\>  : Tabularize<SPACE>/<bar><CR>

nnoremap <F1> : Git status<CR>
nnoremap <F2> : Git log<CR>

" File browsing
let g:netrw_banner=0 " Removes horrible banner

" snippets
nnoremap ,c :-1read $HOME/.config/vim/.skeleton.c<CR>10jA
nnoremap ,java :-1read $HOME/.config/vim/.skeleton.java<CR>6jA
nnoremap ,html :-1read $HOME/.config/vim/.skeleton.html<CR>7jA
nnoremap ,syso ASystem.out.println("");<ESC>2hi

nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

nnoremap <F3> :tabnew<CR>
nnoremap <f4> :tabn<CR>
nnoremap <f5> :tabc<CR>
nnoremap ,fs :Sex<CR>

" Build integration
command! Javac !javac *.java
command! CabalRun !cabal new-run
