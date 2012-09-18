call pathogen#infect()
syntax on
filetype plugin indent on

"
" Colorscheme
colorscheme Tomorrow-Night-Eighties

"
" GUI Options
set transparency=5
set guioptions=aAce
set colorcolumn=120
set gfn=Menlo\ Regular:h12
syntax on

" Set encoding
set encoding=utf-8

" Use 2 spaces for tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Show line numbers
set number

" Show the ruler
set ruler

" Show trailing whitespace as '.'
set listchars=tab:▸\ ,trail:·
set list

" Always display the status line
set laststatus=2

" Incrementally search, highlight
set incsearch
set hlsearch

" Search case-insensitive unless a capital is used
set ignorecase
set smartcase

" Show incomplete commands (lines highlighted, etc)
set showcmd

" Disable word wrap
set nowrap

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


"
" Mappings
"

" <Leader>w Remove all trailing whitespace in file
nnoremap <Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" <Leader>sv Source vimrc file
nnoremap <Leader>sv :source ~/.vimrc<CR>
" <Leader>ev Edit vimrc file
nnoremap <Leader>ev :e ~/.vimrc<CR>



"
" Plugin Customizations
"

" Ack.vim
" <D-F> (Command Shift F) - :Ack
nnoremap <D-F> :Ack

" Fugitive
" <leader>gb maps to :Gblame<CR>
nnoremap <Leader>gb :Gblame<CR>
" <leader>gs maps to :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
" <leader>gd maps to :Gdiff<CR>
nnoremap <Leader>gl :Glog<CR>
" <leader>gl maps to :Glog<CR>
nnoremap <Leader>gc :Gcommit<CR>
" <leader>gc maps to :Gcommit<CR>
nnoremap <Leader>gp :Git push<CR>
" <leader>gp maps to :Git push<CR>

" NERDTree
" Open NERDTree automatically
autocmd vimenter * if !argc() | NERDTree | endif
" Close the window if NERDTree is the only one left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Map <Leader>n to toggle nerd tree
nnoremap <Leader>n :NERDTreeToggle<CR>



"""""""""""""""""""""""

" Disable arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>




"
" MacVim specifics
"
if has("gui_running")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif

