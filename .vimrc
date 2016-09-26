" Vundle START
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Insert New Vundle Plugins Here
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'wincent/command-t'
Plugin 'msanders/snipmate.vim'
Plugin 'xolox/vim-misc'
Plugin 'leafgarland/typescript-vim'
Plugin 'rstacruz/sparkup'
Plugin 'isRuslan/vim-es6'
Plugin 'burnettk/vim-angular'
Plugin 'Shutnik/jshint2.vim'
Plugin 'vim-scripts/tComment'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'

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

" Tab Key Mapping
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

function Nerdmode()
  :bd
  :NERDTree
endfunction

nnoremap nt :call Nerdmode()<CR>

" Colorscheme
 colorscheme Monokai
" colorscheme PaperColor
 colorscheme gentooish
" colorscheme lilydjwg_dark
" colorscheme wombat256
" colorscheme distinguished
" colorscheme burnttoast256

silent! NextColorScheme command and <F8> mapping
silent! PrevColorScheme command and <Shift-F8> mapping

let g:Powerline_symbols = 'fancy'

