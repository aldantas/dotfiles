function! OpenHTTPRequestFile(filepath)
    execute 'silent edit ' . a:filepath
    setlocal filetype=javascript
    setlocal buftype=nofile
    setlocal noswapfile
endfunction
