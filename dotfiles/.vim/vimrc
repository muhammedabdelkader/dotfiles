" Binding keys 
nnoremap n gT
nnoremap p gt

" Turn on syntax highlighting 
syntax on 
" Enable mouse 
set mouse=a
" Show linen umbers 
set number 
 
" Handle Indentation 
set expandtab 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set autoindent
set textwidth=80 

" Word processor 
func! WordPRoceessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu 

com! WP call WordPRoceessorMode()

" JSON Formatting : install jq 
func! JsonFormat()
    % ! jq . 
endfu 

com! JF call JsonFormat()

" Package Manager 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'XadillaX/json-formatter.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'https://github.com/fatih/vim-go.git'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme' "https://github.com/NLKNguyen/papercolor-theme
"Plugin 'artanikin/vim-synthwave84'
call vundle#end()
filetype plugin indent on
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" Use the solarized theme for the Airline status bar
" let g:airline_theme='solarized'
" Color schema
set t_Co=256
set background=dark
colorscheme PaperColor

