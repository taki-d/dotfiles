let [plugins, ftplugin] = dein#load_cache_raw(['/home/takahiro/dotfiles/vim/vimrc', '/home/takahiro/.vim/rc/dein.toml'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/takahiro/.vim/dein'
let g:dein#_runtime_path = '/home/takahiro/.vim/dein/.dein'
let &runtimepath = '/home/takahiro/.vim/dein/repos/github.com/Shougo/vimproc.vim,/home/takahiro/.vim/dein/.dein,/home/takahiro/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/takahiro/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/takahiro/.vim/after,/home/takahiro/.vim/dein/.dein/after'
filetype off
