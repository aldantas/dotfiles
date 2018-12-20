set nocompatible

source ~/.vim/sources/vundlerc.vim

syntax enable
" set completefunc=syntaxcomplete#Complete

set autoindent " repeat indentation on new line
set smartindent " auto indent after keywords

set backspace=indent,eol,start
set encoding=utf-8
" set t_Co=256
set ttyfast " send more character to the screen for redrawing
set showcmd
set laststatus=2 " show status line
set nowrap
set textwidth=110
set undofile
set noshowmode
set mouse=a
" set background=dark
set wildmenu
set ruler " show line and column of cursor
set lazyredraw
set foldlevelstart=99
set virtualedit=block
set clipboard^=unnamed
set termguicolors
colorscheme apprentice

augroup filetypedetect
    au BufRead,BufNewFile *.m,*.oct set filetype=octave
    au BufRead,BufNewFile *.pl set filetype=prolog
    au BufRead,BufNewFile *.tex set filetype=tex
    au BufRead,BufNewFile *.h set filetype=c
augroup END

set smarttab " allow shiftwidth configuration
augroup filetypeConfig
    au FileType c,cpp setlocal ts=8 sw=8 tw=80
    au Filetype python,xml,octave,java,text,tex,r setlocal expandtab ts=4 sw=4
    au Filetype python setlocal tw=79 nosmartindent
    au FileType python noremap <buffer> <Leader>r :!python3 % 
    au FileType r noremap <buffer> <Leader>r :!Rscript %<CR>
    au Filetype tex,markdown setlocal tw=80 directory=.
    au Filetype htmldjango,pov setlocal ts=4 sw=4
    au Filetype html,javascript,vim,json,ruby,eruby,arduino,bib,help setlocal expandtab ts=2 sw=2
augroup END

set hlsearch
set ignorecase " ignore case during search
set infercase
set smartcase " consider case if there is upper case letters
set incsearch " search on typing
set number
set relativenumber
set formatoptions+=c  " Automatic wrap comments
set formatoptions+=j  " Remove comment leader wehn joining lines

set splitbelow
set splitright

let directory = expand("~/.vim/swaps")
if !isdirectory(directory)
    call mkdir(directory)
endif
set directory=~/.vim/swaps

if has('persistent_undo')
    let undodir = expand("~/.vim/undos")
    if !isdirectory(undodir)
        call mkdir(undodir)
    endif
    set undodir=~/.vim/undos
    set undofile
endif

let dictionaries = expand("~/.vim/dictionaries")
if !isdirectory(dictionaries)
    call mkdir(dictionaries)
endif
au FileType * exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))
set complete+=k

set spellfile=~/.vim/spell/miscwords.add
set spellcapcheck=""
au FileType tex,text setlocal spell spelllang=pt,en
au FileType text setlocal complete+=kspell
noremap <Leader>ss :setlocal spell! spelllang=pt,en<CR>
nnoremap <C-Space> a<C-X>s
nmap <C-@> <C-Space>
nnoremap <Leader>sf z=1<CR><CR>
nnoremap <Leader>sq :cclose<CR>
" nnoremap <Leader> :setlocal formatoptions+=a

" disable preview window on auto completion
set completeopt=menu,longest
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/avr
" build tags of your own project with Ctrl-F12
" nmap <F5> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" disable timeout on keys but not on mappings
set ttimeout
set notimeout
set timeoutlen=0

map <Space> <Leader>

" automatically equalize splits when Vim is resized
autocmd VimResized * wincmd =

" navigate through splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" navigate through visited locations
nnoremap <C-a> <C-i>

noremap H ^
noremap L g_
noremap ç z
noremap _ t_
noremap ,w f_l
noremap <Leader><Space> V

" make Enter select completion key instead of creating new line
inoremap <expr> <CR> pumvisible() ? "\<C-y><Esc>" : "\<C-g>u\<CR>"

" line completion
inoremap <C-l> <C-x><C-l>

" duplicate a selection
vmap <Leader>p y'>p

nnoremap <C-n> :set relativenumber!<CR>

" set indentation chars
set listchars=tab:\|-
" set list lcs=tab:\|\
" toggle indentation visualization
nnoremap <Leader>l :set list!<CR>

" use Tab and Shift Tab for indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" navigate through buffers
nnoremap <silent> gb :bnext<CR>
nnoremap <silent> gB :bprevious<CR>

source ~/.vim/sources/keepview.vim
" find and replace occurences of word under cursor (normal mode)
nnoremap <Leader>f :KeepView %s/<C-R><C-W>//g<Left><Left>
" find and replace occurences of selected word (visual mode)
vnoremap <Leader>f "sy:KeepView %s/<C-R>"//g<Left><Left>
" add the g flag to search/replace by default
" set gdefault

" select all
nmap <Leader>a ggVG
nmap <Leader>A :KeepView normal!ggVGy<CR>

" save, quit, quit all
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>W :w !sudo tee %> /dev/null<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>
nnoremap <Leader>x :wq<CR>

" Copy and Paste to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy
vmap <Leader>d "+d
nmap <Leader>dd "+dd
nmap <Leader>p "+p
nmap <Leader>P "+P

" create empty lines
nmap <Leader>o :<c-u>put =repeat(nr2char(10), v:count1)<CR>'[<Up>
nmap <Leader>O :<c-u>put! =repeat(nr2char(10), v:count1)<CR><Down>

" remove current char and split line
nmap <Leader>J r<CR>

" syn match pythonFunction "\zs\(\k\w*\)*\s*\ze("
" syntax match pythonFunction /\v[[:alpha:]_.]+\ze(\s?\()/
" hi link pythonFunction Function

" Use ripgrep if available, fall back to the silver searcher, then fall back to
" the system grep for grepping
if executable('rg')
  set grepprg=rg\ --vimgrep\ -i
  set grepformat^=%f:%l:%c:%m
elseif executable('ag')
  set grepprg=ag\ --vimgrep\ -i
  set grepformat^=%f:%l:%c:%m
else
  set grepprg=grep\ -iR
endif

" Smarter grep command
command! -nargs=+ -complete=file_in_path -bar Grep
      \ silent! grep! <q-args> | redraw!

" Project-wide search
" 'g' for grep
nnoremap <Leader>g :Grep<Space>

" source ~/.vim/sources/http_request.vim
" nnoremap <Leader>ht :call OpenHTTPRequestFile("~/.vim/sources/http_request_file")<cr>
" nnoremap <Leader>tt 2gg:HTTPClientDoRequest<cr>

source ~/.vim/sources/netwr_config.vim
source ~/.vim/sources/pluginrc.vim

