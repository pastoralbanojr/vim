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
Plugin 'terryma/vim-expand-region'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vitalk/vim-lesscss'

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

nnoremap <Space>n :call Nerdmode()<CR>

" Colorscheme
 colorscheme Monokai
" colorscheme PaperColor
" colorscheme gentooish
" colorscheme lilydjwg_dark
" colorscheme wombat256
" colorscheme distinguished
" colorscheme burnttoast256
colorscheme antares 

silent! NextColorScheme command and <F8> mapping
silent! PrevColorScheme command and <Shift-F8> mapping

let g:Powerline_symbols = 'fancy'

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" ignore ctrlp node_modules and others
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -co |& egrep -v "\.(png|jpg|jpeg|gif)$|node_modules"']
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Jay-r Albano September 27, 2016
" This will make you Vim faster

let mapleader = "\<Space>"

" Quick CtrlP: Space + o
nnoremap <Leader>o :CtrlP<CR>
" Save File Hack: Space + W
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
" Visual Mode Hack: doouble space
nmap <Leader><Leader> V
" Quit Hack: prevent that vim window from popping up
map q: :q
" Selection Hack: v vv vvv typing
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" press n button to search again the same keyword you searched
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
" I can paste multiple lines multiple times with simple ppppp.
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Disable folding in Markdown file editing
let g:vim_markdown_folding_disabled = 1

" Faster ESC Key substitute
imap <C-L> <Esc>

" Toggle set paste
set pastetoggle=<F2>

" EJS,marko Syntax Highlight
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.marko set filetype=html
au BufNewFile,BufRead *.vue set filetype=html

" More natural vim split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

