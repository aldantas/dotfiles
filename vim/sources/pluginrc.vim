"========== Eclim ==========
nmap <Leader>e :JavaCorrect<CR>
nmap <Leader>g :JavaGetSet<CR>
nmap <leader>s :JavaSearchContext<CR>
"==========================

"========= NERDTree ==========
nmap <Leader>n :NERDTreeToggle<CR>
"==============================

"======== DelimitMate =========
let delimitMate_expand_cr = 1
"==============================

"======== Ident Guides ========
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=7
hi IndentGuidesEven ctermbg=8
"==============================

"============== AirLine ==============
" set default AirlineTheme
autocmd VimEnter * AirlineTheme wombat
" enable powerline fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#syntastic#enabled = 0
"======================================

"============== latex-vim ==============
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
"=======================================

"==================== YCM ====================
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
"=============================================

"============== latex livepreview ==============
let g:livepreview_previewer='evince'
"===============================================

"============== UltSnips ==============
let g:UltiSnipsExpandTrigger="<C-o>"
"======================================

"============== Trailing Whitespace ==============
nmap <leader>b :FixWhitespace<CR>
"=================================================

"============== Gitgutter ==============
nmap <leader>gg :GitGutterToggle<CR>
"=======================================
