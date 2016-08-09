set nocompatible

source ~/.vim/sources/vundlerc.vim

syntax enable
"setlocal completefunc=syntaxcomplete#Complete

set autoindent "repeat indentation on new line
set smartindent "auto indent after keywords

set backspace=indent,eol,start
set encoding=utf-8
set t_Co=256
" set term=screen-256color
set ttyfast "send more character to the screen for redrawing
set showcmd
set laststatus=2 "show status line
set nowrap
set textwidth=110
set undofile
set noshowmode
set mouse=a
set background=dark
set wildmenu
set ruler "show line and column of cursor
colorscheme molokai

augroup filetypedetect
au! BufRead,BufNewFile *.m,*.oct set filetype=octave
au! BufRead,BufNewFile *.pl set filetype=prolog
augroup END

set smarttab "allow shiftwidth configuration
autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set ts=8 sw=8 tw=80
autocmd Filetype python,vim,xml,octave setlocal expandtab ts=4 sw=4 sts=4
autocmd Filetype htmldjango,pov setlocal ts=4 sw=4 sts=4
autocmd Filetype java setlocal expandtab ts=4 sw=4 sts=4
autocmd Filetype html,javascript,json,ruby,eruby setlocal expandtab ts=2 sw=2 sts=2
autocmd Filetype tex setlocal directory=.

set hlsearch
set ignorecase "ignore case during search
set smartcase "consider case if there is upper case letters
set incsearch "search on typing
set relativenumber

"automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

set runtimepath+=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set splitbelow
set splitright

set directory=~/.vim/swaps
set undodir=~/.vim/undo

"disable preview window on auto completion
set completeopt=menuone,longest
"disable timeout on keys but not on mappings
set ttimeout
set notimeout
set timeoutlen=0

"change current line number color
" hi CursorLineNr ctermfg=193 ctermbg=236 cterm=bold

map <Space> <Leader>

inoremap <C-c> <Esc>

inoremap <C-Space> <C-x><C-o>
imap <buffer> <Nul> <C-Space>
smap <buffer> <Nul> <C-Space>

"toggle highlighting on/off, and show current value.
noremap <Leader>h :set hlsearch! hlsearch?<CR>

"navigate through splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"set indentation chars
set listchars=tab:\|-
"set list lcs=tab:\|\
"toggle indentation visualization
nnoremap <Leader>l :set list!<CR>

"use Tab and Shift Tab for indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"find and replace occurences of word under cursor (normal mode)
nnoremap <Leader>f :KeepView %s/<C-R><C-W>/
"find and replace occurences of selected word (visual mode)
vmap <Leader>f "sy:KeepView %s/<C-R>"/
"add the g flag to search/replace by default
set gdefault

"select all
nmap <Leader>a ggVG

"save, quit, quit all
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>W :w !sudo tee %> /dev/null<CR>
nnoremap <Leader>q :q<CR>
nnoremap Q :q!<CR>
nnoremap <Leader>Q :qa!<CR>

"reedit current file
nnoremap <Leader>re :e %<CR>

"retab current file
nnoremap <Leader>rt :retab %<CR>

"Copy and Paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"move lines up and down
" nnoremap <Leader>k :m .-2<CR>==
" nnoremap <Leader>j :m .+1<CR>==
" inoremap <Leader>j <Esc>:m .+1<CR>==gi
" inoremap <Leader>k <Esc>:m .-2<CR>==gi
" vnoremap <Leader>j :m '>+1<CR>gv=gv
" vnoremap <Leader>k :m '<-2<CR>gv=gv

"create empty line
nmap <Leader>o :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nmap <Leader>O :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[

"remove current char and split line
nmap <Leader>J r<CR>

source ~/.vim/sources/http_request.vim
nnoremap <Leader>ht :call OpenHTTPRequestFile("~/.vim/sources/http_request_file")<cr>

source ~/.vim/sources/pluginrc.vim
