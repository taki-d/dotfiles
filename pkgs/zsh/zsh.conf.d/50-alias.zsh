alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# /home/taki/Screenshot/hogedate.pngに保存するように設定．
alias gnome-screenshot="gnome-screenshot -f $HOME/Screenshot/$(date +%Y-%m-%d-%H:%M:%S).png"
alias n=nvim
alias lab='xrandr --output DP3 --above eDP1 --mode 3840x1600 && xrandr --output eDP1 --off'