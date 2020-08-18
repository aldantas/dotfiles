function! OpenHTTPRequestFile(filepath)
    execute 'silent edit ' . a:filepath
    setlocal filetype=json
    setlocal buftype=nofile
    setlocal noswapfile
endfunction
