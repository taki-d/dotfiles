set number




"dein.vimの設定
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/takahiro/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/home/takahiro/.vim'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

