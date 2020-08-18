" :KeepView from https://github.com/vim-scripts/anwolib
" these function are not supposed to be called directly
"
if !exists("s:vist")
    let s:vist = {'depth': 0}
endif

func! SaveView()
    if s:vist.depth == 0
	let s:vist.view = winsaveview()
    endif
    let s:vist.depth += 1
endfunc

func! RestoreView()
    if s:vist.depth == 1
	call winrestview(s:vist.view)
	unlet s:vist.view
    endif
    let s:vist.depth -= 1
endfunc

com! -nargs=* -complete=command KeepView
    \ try| call SaveView()| exec <q-args>
    \| finally| call RestoreView()| endtry
