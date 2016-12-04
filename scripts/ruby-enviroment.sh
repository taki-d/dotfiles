git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "[[ -d ~/.rbenv  ]] && \" >> ~/.bashrc
echo "  export PATH=${HOME}/.rbenv/bin:${PATH} && \" >> ~\.bashrc
echo '  eval "$(rbenv init -)"' >> ~/.bashrc

