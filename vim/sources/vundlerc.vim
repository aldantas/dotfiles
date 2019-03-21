filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"  " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"   " Keep Plugin commands between vundle#begin/end.

" ==== Navigation Plugins ====
Plugin 'bkad/CamelCaseMotion'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'vim-scripts/argtextobj.vim'

" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-scripts/taglist.vim'
" Plugin 'vim-scripts/a.vim'
" Plugin 'mbbill/undotree'
" Plugin 'tpope/vim-vinegar'

" ==== Edition Plugins ====
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'aldantas/vim-custom-surround'

Plugin 'tommcdo/vim-exchange'
Plugin 'bronson/vim-trailing-whitespace'

"==== Interface Plugins ====
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'aldantas/vim-airline-colornum'

Plugin 'airblade/vim-gitgutter'
Plugin 'szw/vim-maximizer'
Plugin 'ap/vim-buftabline'
" Plugin 'bluz71/vim-moonfly-colors'

" Plugin 'flazz/vim-colorschemes'
" Plugin 'tomasr/molokai'
" Plugin 'godlygeek/csapprox'

"==== Autocomplete Plugins ====
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/async.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'aldantas/vim-snippets'

" ==== Syntax Plugins ====
Plugin 'romainl/vim-cool'
" Plugin 'jvirtanen/vim-octave'
" Plugin 'nottwo/avr-vim'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'AugustoLD/vim-povray'

" ==== Utility Plugins ====
Plugin 'aldantas/vim-submode'
Plugin 'vim-scripts/undofile_warn.vim'
" Plugin 'rhysd/vim-grammarous'

" Plugin 'godlygeek/tabular'
" Plugin 'chrisbra/csv.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'aquach/vim-http-client'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'vim-scripts/vim-do'
" vim   " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on
