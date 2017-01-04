" For Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle handle vundle. required.
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" all vundle plugins above this line
call vundle#end()
filetype indent plugin on
syntax on
" End vundle stuff

set t_Co=256
let g:airline_theme='murmur'

set ts=8 et sw=4 sts=4 number
set laststatus=2
let mapleader = ","

" NERDTree and tabs
nnoremap <C-K> :NERDTreeToggle<CR>
nnoremap <leader>m :tabnext<CR>
nnoremap <leader>1 :tabfirst<CR>
nnoremap <leader>2 :tabfirst<CR>:tabnext<CR>
nnoremap <leader>3 :tabfirst<CR>:tabnext<CR>:tabnext<CR>
nnoremap <leader>4 :tabfirst<CR>:tabnext<CR>:tabnext<CR>:tabnext<CR>

" vim-airline settings
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_warning=''

" seldom used command to edit .vimrc
command Vimrc :tabedit ~/.vimrc

" TODO: Instead of !python3, maybe read the shebang (if it exists), or in some
" other way dynamically run the file (regardless of filetype?)
" UPDATE 17/12-16: maplocalleader ?
autocmd FileType python nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python hi Comment ctermfg=lightblue
