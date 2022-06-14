%retab
syntax on
filetype plugin indent on
set undodir=~/.config/nvim/undodir
set clipboard=unnamedplus
set ts=4 sts=4 sw=4 ai si
set fenc=utf-8
set mouse=a
set bg=dark
set nowrap
set sb spr
set nu rnu
set ww=[,]
set nohls
set noswf
set so=20
set nobk
set noet
set tgc
set udf
set cul
set hid

call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'lilydjwg/colorizer'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'svermeulen/vim-easyclip'
Plug 'akinsho/toggleterm.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Valloric/vim-operator-highlight'
Plug 'nanotech/jellybeans.vim'
call plug#end()

inoremap <expr><TAB> pumvisible() ? "<C-n>" : "<TAB>"
inoremap <expr> <Down> pumvisible() ? "<C-y><Down>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-y><Up>" : "<Up>"

nnoremap <S-j> <C-u>
nnoremap <S-k> <C-d>
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>

let $FZF_DEFAULT_COMMAND = 'find .'
nnoremap <C-p> :Files<Cr>

let delimitMate_expand_cr = 1

tnoremap <Esc> <C-\><C-n>
let mapleader = " "

nnoremap j k
nnoremap k j

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev f terminal
cnoreabbrev F terminal

let g:ophigh_color_gui = "#C6B6EE"
let g:airline_theme='base16'
colo jellybeans

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup AUTOGROUP
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END

runtime compiler.vim
