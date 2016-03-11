set nocompatible              " be iMproved, required

" Vundle START
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Insert New Vundle Plugins Here
Plugin 'pangloss/vim-javascript'
Plugin 'javascript-libraries-syntax.vim'
Plugin 'command-t'

Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle END

" Dont Generate .swp files
set noswapfile
colorscheme Monokai 

" Show Line Number 
set nu

" Pasting
set paste

" Tab Settings
set ts=2
set sw=2
set expandtab
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
	set noexpandtab
else
	set expandtab
	set tabstop=2
	set shiftwidth=2
endif

" Insert Other Plugins Here
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/javascript-libraries-syntax.vim
set runtimepath+=~/.vim/bundle/jshint2.vim/

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

