function! s:DetectJS()
    if getline(1) =~# '^#!.*/bin/\(env\s\+\)\?node\>'
        setfiletype javascript
    endif
endfunction
autocmd BufNewFile,BufRead * call s:DetectJS()
" Detect vimshell rc file.
autocmd BufNewFile,BufRead *.vimsh,.vimshrc,vimshrc set filetype=vimshrc
autocmd BufNewFile,BufRead *.toml set filetype=toml

" Rust uses Cargo.toml and Cargo.lock (both are toml files).
autocmd BufNewFile,BufRead Cargo.lock set filetype=toml
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
