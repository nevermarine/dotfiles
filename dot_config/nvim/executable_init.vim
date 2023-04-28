set nocompatible
syntax on
set number
set relativenumber
set backspace=indent,eol,start
set ignorecase
set smartcase
set mouse=a
nmap Q <nop> 
" 'Q' in normal mode enters Ex mode. You almost never want this.
set noerrorbells visualbell t_vb=

" set system clipboard as default one
set clipboard+=unnamedplus

"================ Vundle Settings ================ 
let vundleInstalled=1
let vundle_readme=expand('~/.cache/nvim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme) 
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.cache/nvim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim ~/.cache/nvim/bundle/Vundle.vim
	let vundleInstalled=0
endif
set rtp+=~/.cache/nvim/bundle/Vundle.vim
call vundle#begin('~/.cache/nvim/bundle')      
call vundle#begin('~/.cache/nvim/bundle')              " required
	" required    
	Plugin 'VundleVim/Vundle.vim'    
	" autocompletion plugin 
	Plugin 'ervandew/supertab'       
	" xkb-switch for vim (sane Russian layout)
	"Plugin 'lyokha/vim-xkbswitch'
	" vim-surround
	Plugin 'tpope/vim-surround'
	" execution insive vim
	Plugin 'tpope/vim-commentary'
	Plugin 'vim-scripts/quickrun.vim'
	" fancy colors and stuff
	"Plugin 'vim-airline/vim-airline'
	" wal colorscheme
	" Plugin 'dylanaraps/wal.vim'
	" code checks, dunno
	Plugin 'dense-analysis/ale'
	" brackets plugin
	Plugin 'jiangmiao/auto-pairs'
	" fzf
	" Plugin 'junegunn/fzf'
	" lsp
	Plugin 'prabirshrestha/vim-lsp'
	call vundle#end()                " required
filetype plugin indent on        " required
if vundleInstalled == 0
	echo "Installing plugins..."
	echo ""
	:PluginInstall
endif
"================ Remap Settings =================
" Set leader key to comma
	let mapleader = ' '
" Open .vimrc easily
	nnoremap <leader>ev :vsplit $MYVIMRC<cr><c-w>LG 
" Source .vimrc easily
	nnoremap <leader>sv :source $MYVIMRC<cr>
" jk to exit insert and visual and command mode 
	inoremap <c-j> <esc>
	cnoremap <c-j> <esc> 
" save this buffer
	nnoremap <leader>wf :w<cr>
" save and quit
	nnoremap <leader>wq :x<cr>
" save as a new file
	nnoremap <leader>sf :saveas 
" save with sudo and quit
	nnoremap <leader>ws :w !doas tee %<cr>:q!<cr>
" open buffer in a new window
	nnoremap <leader>nw :sbuffer<cr>
" close current buffer
	nnoremap <leader>b :bd<cr>
" close tab
	nnoremap <leader>q :q<cr>
" exit entirely
	nnoremap <leader>r :q!<cr>
" split vertically
	nnoremap <leader>s :vsplit 
" split horizontally
	nnoremap <leader>h :split 
" faster navigating 
	nnoremap <c-h> <c-w>h
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-l> <c-w>l
" semicolons <=> colons
	nnoremap ; :
	nnoremap : ;
	vnoremap ; :
	vnoremap : ;
" faster comments
	vnoremap <leader>cl <s-i># <esc>
	nnoremap <leader>cc mo^i#<space><esc>`o
" exiting paranthesis in insert mode
	inoremap <C-u> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
	"set keymap=russian-jcukenwin
	set iminsert=0

" set autoindent
set tabstop=4
set shiftwidth=4
" set expandtab
" set tw=4

"Airline Settings
"let g:airline#extensions#tabline#enabled = 1

"wal colorscheme
" colorscheme wal

set wrap linebreak
let g:AutoPairsMultilineClose = 0
