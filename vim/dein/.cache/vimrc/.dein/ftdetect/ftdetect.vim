function! s:DetectJS()
    if getline(1) =~# '^#!.*/bin/\(env\s\+\)\?node\>'
        setfiletype javascript
    endif
endfunction
autocmd BufNewFile,BufRead * call s:DetectJS()
" Detect vimshell rc file.
autocmd BufNewFile,BufRead *.vimsh,.vimshrc,vimshrc set filetype=vimshrc
" Go dep and Rust use several TOML config files that are not named with .toml.
autocmd BufNewFile,BufRead *.toml,Gopkg.lock,Cargo.lock,*/.cargo/config set filetype=toml
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
