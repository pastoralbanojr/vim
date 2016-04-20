set nocompatible              " be iMproved, required

" Vundle START
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Insert New Vundle Plugins Here
Plugin 'pangloss/vim-javascript'
Plugin 'command-t'
Plugin 'jshint2.vim'
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'surround'
Plugin 'snipmate'
Plugin 'misc'
Plugin 'colorscheme-switcher'
" Plugin 'autoclose/plugin'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle END

" indent better in HTML
set smartindent
" Dont Generate .swp files
set noswapfile
" Show Line Number 
set nu

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

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Colorscheme
colorscheme Monokai 
colorscheme inkpot 

silent! NextColorScheme command and <F8> mapping 
silent! PrevColorScheme command and <Shift-F8> mapping 

