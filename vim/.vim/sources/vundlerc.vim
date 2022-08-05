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
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'vim-scripts/a.vim'
" Plugin 'mbbill/undotree'
" Plugin 'tpope/vim-vinegar'

" ==== Edition Plugins ====
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'aldantas/vim-custom-surround'
Plugin 'tommcdo/vim-exchange'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tell-k/vim-autopep8'
Plugin 'nvie/vim-flake8'

"==== Interface Plugins ====
Plugin 'ap/vim-buftabline'
Plugin 'airblade/vim-gitgutter'
" Plugin 'bluz71/vim-moonfly-colors'

"==== Autocomplete Plugins ====
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'prabirshrestha/async.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'aldantas/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'fatih/vim-go'

" ==== Syntax Plugins ====
Plugin 'vim-python/python-syntax'
Plugin 'filipelbc/orgmode.vim'
Plugin 'aklt/plantuml-syntax'
" Plugin 'godlygeek/csapprox'
" Plugin 'jvirtanen/vim-octave'
" Plugin 'nottwo/avr-vim'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'AugustoLD/vim-povray'

" ==== Utility Plugins ====
Plugin 'szw/vim-maximizer'
Plugin 'aldantas/vim-submode'
Plugin 'vim-scripts/undofile_warn.vim'
Plugin 'romainl/vim-cool'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'vim-autoformat/vim-autoformat'
Plugin 'tpope/vim-fugitive'
" Plugin 'rhysd/vim-grammarous'
" Plugin 'godlygeek/tabular'
" Plugin 'chrisbra/csv.vim'
" Plugin 'aquach/vim-http-client'

" vim   " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on
