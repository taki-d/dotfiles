let [plugins, ftplugin] = dein#load_cache_raw(['/home/takahiro/dotfiles/vim/vimrc', '/home/takahiro/.vim/rc/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/takahiro/.vim/dein'
let g:dein#_runtime_path = '/home/takahiro/.vim/dein/.cache/vimrc/.dein'
let g:dein#_cache_path = '/home/takahiro/.vim/dein/.cache/vimrc'
let &runtimepath = '/home/takahiro/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/takahiro/.vim,/home/takahiro/.vim/dein/repos/github.com/Shougo/vimproc.vim,/home/takahiro/.vim/dein/.cache/vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/home/takahiro/.vim/after,/home/takahiro/.vim/dein/.cache/vimrc/.dein/after'
filetype off
