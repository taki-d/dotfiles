"表示の設定
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント
syntax on "ハイライトの有効

"検索の設定
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る



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
"
" Plugin(機能追加)
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/nemoru.vim')
call dein#add('itchyny/lightline.vim')

" Plugin(Colorscheme)
call dein#add('tomasr/molokai',{'merged':0})
call dein#add('vim-scripts/twilight')
call dein#add('nanotech/jellybeans.vim')
call dein#add('w0ng/vim-hybrid')
call dein#add('vim-scripts/twilight')
call dein#add('jonathanfilip/vim-lucius')
call dein#add('jpo/vim-railscasts-theme')
call dein#add('altercation/vim-colors-solarized')
call dein#add('vim-scripts/Wombat')
call dein#add('tomasr/molokai')
call dein#add('vim-scripts/rdark')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

"If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

colorscheme molokai
