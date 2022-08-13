set nocompatible

source ~/.vim/sources/vundlerc.vim

syntax enable
" set completefunc=syntaxcomplete#Complete
set omnifunc=syntaxcomplete#Complete

set autoindent " repeat indentation on new line
set smartindent " auto indent after keywords

set backspace=indent,eol,start
set encoding=utf-8
" set t_Co=256
" set ttyfast " send more character to the screen for redrawing
set showcmd
set laststatus=2 " show status line
set nowrap
set textwidth=110
set undofile
set noshowmode
set mouse=a
set wildmenu
set ruler " show line and column of cursor
set foldlevelstart=99
set virtualedit=block " allows placing the cursor on empty spaces when block selecting
set clipboard^=unnamed
set updatetime=100
" set lazyredraw
" set termguicolors
" set background=dark
colorscheme apprentice

augroup fileTypeDetect
    au BufRead,BufNewFile *.m,*.oct set filetype=octave
    au BufRead,BufNewFile *.pl set filetype=prolog
    au BufRead,BufNewFile *.tex,*.cls set filetype=tex
    au BufRead,BufNewFile *.h set filetype=c
    au BufRead,BufNewFile *.org set filetype=org
augroup END

set smarttab " allow shiftwidth configuration
augroup fileTypeTabbing
    au FileType c,cpp setlocal ts=8 sw=8 tw=80
    au Filetype python,xml,octave,java,text,tex,r,org,sql setlocal expandtab ts=4 sw=4
    au Filetype python setlocal nosmartindent
    au Filetype tex setlocal tw=80 directory=. wrap linebreak
    au Filetype markdown setlocal tw=80 directory=. wrap linebreak expandtab ts=4 sw=4
    au Filetype html,css,htmldjango,pov,javascript,vim,go,json,ruby,eruby,arduino,bib,help setlocal expandtab ts=4 sw=4
augroup END

augroup fileTypeRunning
    au FileType python noremap <buffer> <Leader>e :!python3 %<Space>
    au FileType sh noremap <buffer> <Leader>e :!sh %<Space>
    au FileType go noremap <buffer> <Leader>e :!go run %<Space>
    au FileType python noremap <silent> <Leader>E :exec printf('1,%s w !python3', getline(''))<CR>
    au FileType r noremap <buffer> <Leader>e :!Rscript %<CR>
augroup END

set hlsearch
set ignorecase " ignore case during search
set infercase
set smartcase " consider case if there is upper case letters
set incsearch " search on typing
set number
set relativenumber
set formatoptions+=c " Automatic wrap comments
set formatoptions+=j " Remove comment leader wehn joining lines

set splitbelow
set splitright

nnoremap gx :!xdg-open <cWORD> &<CR><CR>

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

set spellfile=~/.vim/spell/miscwords.add
set spellcapcheck=""
au FileType tex,text,org,markdown setlocal spell complete+=kspell wrap lbr formatoptions-=t

let g:languages = ['pt,en', 'en', 'pt']
let g:spell_language_idx = 0
let &spelllang=g:languages[g:spell_language_idx]

function! SpellLanguageCycle()
  let g:spell_language_idx += 1
  if g:spell_language_idx == len(g:languages)
    let g:spell_language_idx = 0
  endif
  let &spelllang=g:languages[g:spell_language_idx]
  echo &spelllang
endfunction
noremap <Leader>sl :call SpellLanguageCycle()<CR>

function! ParagraphFormatToggle()
  if &formatoptions =~ 'a'
    setlocal formatoptions-=a
    echo 'Paragraph Format OFF'
  else
    setlocal formatoptions+=a
    echo 'Paragraph Format ON'
  endif
endfunction
nnoremap <Leader>sp :call ParagraphFormatToggle()<CR>

" don't remember why
nmap <C-@> <C-Space>
" trigger spell suggestion
au FileType tex,text nnoremap <C-Space> a<C-X>s
" accept first spell suggestion
nnoremap <Leader>sf z=1<CR><CR>
" toggle spell
nnoremap <Leader>ss :setlocal spell!<CR>

" set completeopt+=menuone
" disable preview window on auto completion
set completeopt-=preview

" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/avr
" build tags of your own project with Ctrl-F12
" nmap <F5> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" disable timeout on keys but not on mappings??
" Don't remeber why exaclty, but it has something to do with using space as leader key
" while not adding a delay when you press space in insert mode
set ttimeout
set notimeout
set timeoutlen=0

map <Space> <Leader>

" automatically equalize splits when Vim is resized
autocmd VimResized * wincmd =

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

vnoremap j gj
vnoremap k gk

" navigate through splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" go to next visited position
nnoremap <C-a> <C-i>

noremap <expr> H &wrap ? 'g^' : '^'
noremap <expr> L &wrap ? 'g$' : '$'
" close preview and quickfix windows
noremap <silent> ç :pclose <bar> cclose<CR>

" noremap <Leader><Space> V

" make Enter select completion key instead of creating new line
inoremap <expr> <CR> pumvisible() ? "\<C-y><Esc>" : "\<C-g>u\<CR>"

nnoremap <C-n> :set relativenumber!<CR>

" use Tab and Shift Tab for indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

try
  exec printf('highlight CursorLineNr cterm=bold ctermbg=%s ctermfg=%s', synIDattr(hlID("LineNr"), "bg"), synIDattr(hlID("TabLineSel"), "bg"))
catch
  " exec printf('highlight CursorLineNr gui=bold guibg=%s guifg=%s', synIDattr(hlID("LineNr"), "bg"), synIDattr(hlID("TabLineSel"), "bg"))
endtry

" navigate through buffers
nnoremap <silent> gb :bnext<CR>
nnoremap <silent> gB :bprevious<CR>

source ~/.vim/sources/keepview.vim
" find and replace occurences of word under cursor (normal mode)
nnoremap <Leader>r :KeepView %s/<C-R><C-W>//g<Left><Left>
" find and replace occurences of selected word (visual mode)
vnoremap <Leader>r "sy:KeepView %s/<C-R>"//g<Left><Left>

nnoremap <Leader>R :bufdo %s/<C-R><C-W>//g \| update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
vnoremap <Leader>R "sy:bufdo %s/<C-R>"//g \| update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" select all
nmap <Leader>a ggVG
nmap <Leader>A :KeepView normal!ggVGy<CR>

" save, quit, quit all
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>W :w !sudo tee %> /dev/null<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>
nnoremap <Leader>x :wq<CR>
nnoremap Q <c-w>z

" Copy and Paste to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy
vmap <Leader>d "+d
nmap <Leader>dd "+dd
nmap <Leader>p "+p
nmap <Leader>P "+P

" create empty lines
" nmap <Leader>o :<c-u>put =repeat(nr2char(10), v:count1)<CR>'[<Up>
" nmap <Leader>O :<c-u>put! =repeat(nr2char(10), v:count1)<CR><Down>
nmap <Leader>o :<c-u>put =repeat(nr2char(10), v:count1)<CR>
nmap <Leader>O :<c-u>put! =repeat(nr2char(10), v:count1)<CR>

" remove current char and split line
nnoremap <Leader>J r<CR>

" syn match pythonFunction "\zs\(\k\w*\)*\s*\ze("
" syntax match pythonFunction /\v[[:alpha:]_.]+\ze(\s?\()/
" hi link pythonFunction Function

" Use ripgrep if available, fall back to the silver searcher, then fall back to
" the system grep for grepping
" if executable('rg')
"   set grepprg=rg\ --vimgrep\ -i
"   set grepformat^=%f:%l:%c:%m
" elseif executable('ag')
"   set grepprg=ag\ --vimgrep\ -i
"   set grepformat^=%f:%l:%c:%m
" else
"   set grepprg=grep\ -iR
" endif

" Smarter grep command
" command! -nargs=+ -complete=file_in_path -bar Grep
"       \ silent! grep! <q-args> | redraw!

" Project-wide search
" nnoremap <Leader>g :Grep<Space>

" emacs --batch --load $ORG_EMACS_EL --file "$1" --funcall org-html-export-to-html

execute "set <M-l>=\el"
" TODO improve this with <C-o>
" Move the next char to end of line
inoremap <M-l> <Esc>lx$pi

" source ~/.vim/sources/http_request.vim
" nnoremap <Leader>ht :call OpenHTTPRequestFile("~/.vim/sources/http_request_file")<cr>
" nnoremap <Leader>tt 2gg:HTTPClientDoRequest<cr>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
nmap <Leader>t :Lexplore<CR>

" source ~/.vim/sources/netwr_config.vim
source ~/.vim/sources/pluginrc.vim
" source ~/.vim/sources/lsp_config.vim
source ~/.vim/sources/statusline.vim
