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
Plugin 'vim-scripts/a.vim'
"Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-scripts/easy-navigate.vim'
Plugin 'vim-latex/vim-latex'
" vim   " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
