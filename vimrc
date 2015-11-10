set nocompatible
let mapleader=" "
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"  " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"   " Keep Plugin commands between vundle#begin/end.
Plugin 'suan/vim-instant-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/vim-markdown-wiki'
Plugin 'tpope/vim-surround'
Plugin 'lsdr/octave.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nottwo/avr-vim'
Plugin 'tpope/vim-commentary'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
"Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-latex/vim-latex'
Plugin 'vim-scripts/easy-navigate.vim'


" vim   " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
syntax enable

"autocmd FileType python setlocal completeopt-=preview
augroup filetypedetect
au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

set smartindent
set smarttab

set encoding=utf-8
set t_Co=256
set showcmd
set laststatus=2
colorscheme molokai

set nowrap
set textwidth=110
set ttimeout
set ttimeoutlen=0
set notimeout
set backspace=indent,eol,start

autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set ts=8 sw=8 tw=80
autocmd Filetype python setlocal expandtab ts=8 sw=4 sts=4 cinwords=if,elif,else,for,while,try,except,finally,def,class,with

set ruler
set hlsearch
set ignorecase
set smartcase
set incsearch
set mouse=a
set relativenumber
set background=dark
set noshowmode
set wildmenu

"automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

set runtimepath+=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set splitbelow
set splitright
set clipboard=unnamed

"change current line number color
hi CursorLineNr ctermfg=193 ctermbg=236 cterm=bold

"toggle highlighting on/off, and show current value.
noremap <leader>h :set hlsearch! hlsearch?<CR>

"navigate trhough splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"set indentation chars
set listchars=tab:\|-
"set list lcs=tab:\|\
"toggle indentation visualization
nnoremap <C-I> :set list!<CR>

inoremap <NUL> <C-x><C-o>

" find and replace occurences of word under cursor (normal mode)
nnoremap <Leader>f :%s/<C-R><C-W>/
" find and replace occurences of selected word (visual mode)
vmap <Leader>f "sy:%s/<C-R>"/

" select all
nmap <Leader>a ggVG

nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>

"Copy and Paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" create empty line
nmap <Leader>o o<ESC>k
nmap <Leader>O O<ESC>j

" split line (used over space character)
nmap <Leader>j r<CR>

" ========== Eclim ==========
nmap <Leader>e :JavaCorrect<CR>
nmap <Leader>g :JavaGetSet<CR>
nmap <leader>s :JavaSearchContext<CR>
" ==========================

" ========= NERDTree ==========
nmap <Leader>n :NERDTreeToggle<CR>
" ==============================

" ======== DelimitMate =========
let delimitMate_expand_cr = 1
" ==============================

" ======== Ident Guides ========
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=7
hi IndentGuidesEven ctermbg=8
" ==============================

" ============== AirLine ==============
" set default AirlineTheme
autocmd VimEnter * AirlineTheme wombat
" enable powerline fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#syntastic#enabled = 0
" ======================================

" ============== latex-vim ==============
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
autocmd Filetype tex setlocal nofoldenable
"To solve the propleme with vim-latexsuite has with ã and â
imap <buffer> <silent> <M-C> <Plug>Tex_MathCal
imap <buffer> <silent> <M-B> <Plug>Tex_MathBF
"imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
imap <buffer> <silent> <M-A>  <Plug>Tex_InsertItem
imap <buffer> <silent> <M-E>  <Plug>Tex_InsertItem
imap <buffer> <silent> <M-e>  <Plug>Tex_InsertItemOnThisLine
"imap <buffer> <silent> \c <Plug>Traditional
map <buffer> <silent> é é
map <buffer> <silent> á á
map <buffer> <silent> ã ã
"imap ã <Plug>Tex_MathCal
"imap é <Plug>
" =======================================

" ==================== YCM ====================
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_show_diagnostics_ui = 0
let g:EclimCompletionMethod = 'omnifunc'
"nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
" =============================================

" ============== latex livepreview ==============
let g:livepreview_previewer='evince'
" ===============================================

" ============== UltSnips ==============
let g:UltiSnipsExpandTrigger="<C-o>"
" ======================================

" ============== Trailing Whitespace ==============
nmap <leader>b :FixWhitespace<CR>
" =================================================

" ============== Gitgutter ==============
nmap <leader>gg :GitGutterToggle<CR>
" =======================================
