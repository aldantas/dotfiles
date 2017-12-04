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

"================ AutoPairs ================
let g:AutoPairsShortcutBackInsert = ''
execute "set <M-n>=\en"
let g:AutoPairsShortcutJump = '<M-n>'
execute "set <M-p>=\ep"
let g:AutoPairsShortcutFastWrap = '<M-p>'
execute "set <M-t>=\et"
let g:AutoPairsShortcutToggle = '<M-t>'
"===========================================

"============== Trailing Whitespace ==============
nmap <leader>b :FixWhitespace<CR>
"=================================================

"============== AirLine ==============
" set default AirlineTheme
let g:airline_theme = 'wombat'
" enable powerline fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
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
" nmap <Leader>e :JavaCorrect<CR>
" nmap <Leader>gs :JavaGetSet<CR>
" nmap <leader>s :JavaSearchContext<CR>
" nmap <C-O>  :JavaImportOrganize<CR>
" let g:EclimCompletionMethod = 'omnifunc'
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

"==================== VCM ====================
augroup VimCompletesMeTex
    autocmd!
    autocmd FileType tex let b:vcm_omni_pattern =
        \ '\v\\%('
        \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
        \ . '|hyperref\s*\[[^]]*'
        \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|%(include%(only)?|input)\s*\{[^}]*'
        \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . '|usepackage%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . '|documentclass%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . ')'
augroup END
let g:vcm_s_tab_mapping = "\<C-o>a"
"=============================================

"============== UltSnips ==============
let g:UltiSnipsExpandTrigger = "<C-o>"
"======================================

"============== vim-povray ==============
let g:image_viewer = 'ristretto'
"========================================

"============== HTTPRequest ==============
let g:http_client_json_ft = 'json'
"=========================================

"========================== Submode ==========================
call submode#enter_with('move_line', 'v', '', '<Leader>j', ":m '>+1<CR>gv")
call submode#enter_with('move_line', 'v', '', '<Leader>k', ":m '<-2<CR>gv")
call submode#enter_with('move_line', 'n', '', '<Leader>j', ':m .+1<CR>==')
call submode#enter_with('move_line', 'n', '', '<Leader>k', ':m .-2<CR>==')
call submode#map('move_line', 'n', '', 'j', ':m .+1<CR>==')
call submode#leave_with('move_line', 'n', '', 'q')
call submode#map('move_line', 'n', '', 'k', ':m .-2<CR>==')
call submode#map('move_line', 'v', '', 'j', ":m '>+1<CR>gv")
call submode#map('move_line', 'v', '', 'k', ":m '<-2<CR>gv")
call submode#map('move_line', 'v', 'x', 'q', "=")
call submode#map('move_line', 'v', 'x', '<Esc>', "=")
let g:submode_always_show_submode = 2
let g:submode_keep_leaving_key = 1
nmap <leader>u :SubmodeUndo<CR>
nmap <leader><c-r> :SubmodeRedo<CR>
"=============================================================

"========================== Custom Surround ==========================
au FileType tex call customsurround#map('<Leader>tm', '\(', '\)')
au FileType tex call customsurround#map('<Leader>tb', '\textbf{', '}')
au FileType tex call customsurround#map('<Leader>ti', '\textit{', '}')
vnoremap <Leader>c :SurroundSelection<Space>
nnoremap <Leader>c :SurroundWord<Space>
"=====================================================================

"============== vimtex ==============
let g:vimtex_quickfix_mode = 2
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_zathura_hook_view = 'MyHook'

function! MyHook() dict
  if self.xwin_id > 0
    let l:vim_win_id = system('xdotool getactivewindow')[:-2]
    silent call system('xdotool windowraise ' . self.xwin_id)
    silent call system('xdotool key Escape')
    silent call system('xdotool windowraise ' . l:vim_win_id)
  endif
endfunction
"====================================

"============== csv.vim ==============
let g:csv_delim=';'
"=====================================

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
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_message = 0
let g:pymode_lint_cwindow = 0
let g:pymode_lint_signs = 0
let g:pymode_rope = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_show_doc_bind = ''
let g:pymode_rope_autoimport = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_syntax = 1
let g:pymode_syntax_space_errors = 0
"=========================================
