# dotfiles

## Create symbolic link at $HOME
`lndf {filename}`

example: `lndf .xonshrc`


## Installation for Ubuntu
```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim libffi-dev libsqlite3-dev libreadline-dev

git clone git://github.com/yyuu/pyenv.git ~/.pyenv

pyenv install 3.X.X
pyenv global 3.X.X

pip install xonsh prompt_toolkit matplotlib opencv-python

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

sudo snap install bw
```
