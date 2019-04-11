" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
let g:lsp_signs_enabled=0
let g:lsp_async_completion=1
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'workspace_config': {'pyls': {'plugins': {'jedi_completion': {'include_params': v:false}}}},
        \ 'whitelist': ['python'],
        \ })
    autocmd FileType python setlocal omnifunc=lsp#complete
    autocmd FileType python nnoremap K :LspHover<CR>
endif

if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/ccls',  "completion": {"detailedLabel": v:false}},
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
    autocmd FileType c,cpp setlocal omnifunc=lsp#complete
    autocmd FileType c,cpp nnoremap K :LspHover<CR>
endif
