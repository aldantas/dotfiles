filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"  " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"   " Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'AugustoLD/vim-airline-colornum'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'lsdr/octave.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'AugustoLD/vim-snippets'
Plugin 'nottwo/avr-vim'
Plugin 'tpope/vim-commentary'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/a.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
Plugin 'godlygeek/csapprox'
Plugin 'vim-scripts/easy-navigate.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/undofile_warn.vim'
Plugin 'vim-scripts/anwolib'
"Plugin 'ervandew/supertab'
Plugin 'ajh17/VimCompletesMe'
Plugin 'aquach/vim-http-client'
Plugin 'kana/vim-submode'
" Plugin 'vim-scripts/vim-do'
" Plugin 'AugustoLD/vim-povray'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'xuhdev/vim-latex-live-preview'
" Plugin 'lervag/vimtex'
" vim   " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on
