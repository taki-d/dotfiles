echo "This script will make environment to develop python"

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

echo "" >> ~/.bashrc
echo "export PYENV_ROOT=$HOME/.pyenv" >> ~/.bashrc
echo "export PATH=$PYENV_ROOT/bin:$PATH" >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

echo "eval "$(pyenv virtualenv-init -)" >> ~/.bashrc
