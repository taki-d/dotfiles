"表示の設定
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4
set softtabstop=4
set smartindent
set expandtab
set smartindent "オートインデントi
set laststatus=2
set list "空白文字の可視化
set t_Co=256

"検索の設定
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻るi

"クリップボードを同期
set clipboard=unnamed

"vim上達用
"矢印キーを無効にする
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>

"分割方向の指定
set splitbelow
set splitright

let s:plugin = '~/.config/nvim/config/dein.toml'
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml(s:plugin, {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

colorscheme gruvbox

filetype plugin indent on
syntax on "ハイライトの有効


