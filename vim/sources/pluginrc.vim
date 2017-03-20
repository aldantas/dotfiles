"========= Ctrl-P ==========
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class
"===========================

"========= Taglist ==========
nnoremap <Leader>tl :TlistToggle<CR>
"============================

"================ A ================
noremap gaa :A<CR>
noremap gas :AS<CR>
noremap gav :AV<CR>
noremap gat :AT<CR>
"===================================

"========= NERDTree ==========
" nmap <Leader>n :NERDTreeToggle<CR>
"==============================

"======== DelimitMate =========
let delimitMate_expand_cr = 1
"==============================

"============== Trailing Whitespace ==============
nmap <leader>b :FixWhitespace<CR>
"=================================================

"============== AirLine ==============
" set default AirlineTheme
autocmd VimEnter * AirlineTheme wombat
" enable powerline fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#syntastic#enabled = 0
"======================================

"============== AirLine ColorNum ==============
let g:airline_colornum_reversed = 1
"==============================================

"============== OmniCpp ==============
let OmniCpp_NamespaceSearch = 1
" let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
" let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"=====================================

"========== Eclim ==========
nmap <Leader>e :JavaCorrect<CR>
nmap <Leader>gs :JavaGetSet<CR>
nmap <leader>s :JavaSearchContext<CR>
nmap <C-O>  :JavaImportOrganize<CR>
let g:EclimCompletionMethod = 'omnifunc'
"==========================

"==================== YCM ====================
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_cache_omnifuc=1
"let g:EclimCompletionMethod = 'omnifunc'
""nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>
"nnoremap <leader>gt :YcmCompleter GoTo<CR>
"nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
"=============================================

"======== Ident Guides ========
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" let g:indent_guides_auto_colors = 0
" hi IndentGuidesOdd  ctermbg=7
" hi IndentGuidesEven ctermbg=8
"==============================

"============== latex livepreview ==============
let g:livepreview_previewer='evince'
"===============================================

"============== UltSnips ==============
let g:UltiSnipsExpandTrigger="<C-o>"
"======================================


"============== vim-povray ==============
let g:image_viewer='ristretto'
"========================================

"=================== Super Tab ===================
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"
"=================================================

"============== HTTPRequest ==============
let g:http_client_json_ft = 'json'
"=========================================

"========================== Submode ==========================
call submode#enter_with('move_line', 'v', '', '<Leader>j', ":m '>+1<CR>gv=gv")
call submode#enter_with('move_line', 'v', '', '<Leader>k', ":m '<-2<CR>gv=gv")
call submode#enter_with('move_line', 'n', '', '<Leader>j', ':m .+1<CR>==')
call submode#enter_with('move_line', 'n', '', '<Leader>k', ':m .-2<CR>==')
call submode#leave_with('move_line', 'n', 'r', 'q')
call submode#map('move_line', 'n', '', 'j', ':m .+1<CR>==')
call submode#map('move_line', 'n', '', 'k', ':m .-2<CR>==')
call submode#map('move_line', 'v', '', 'j', ":m '>+1<CR>gv=gv")
call submode#map('move_line', 'v', '', 'k', ":m '<-2<CR>gv=gv")
let g:submode_always_show_submode = 2
let g:submode_keep_leaving_key = 1
nmap <leader>u :SubmodeUndo<CR>
nmap <leader><c-r> :SubmodeRedo<CR>
"=============================================================

"============== python-mode ==============
let g:pymode_warnings = 0
let g:pymode_options = 0
let g:pymode_options_colorcolumn = 0
let g:pymode_quickfix_minheight = 0
let g:pymode_quickfix_maxheight = 0
let g:pymode_python = 'python3'
let g:pymode_run = 0
let g:pymode_breakpoint = 0
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_message = 0
let g:pymode_lint_cwindow = 0
let g:pymode_lint_signs = 0
let g:pymode_rope = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<Tab>'
let g:pymode_rope_show_doc_bind = ''
let g:pymode_rope_autoimport = 1
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_syntax = 1
let g:pymode_syntax_space_errors = 0
"=========================================
