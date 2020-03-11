#!/bin/shell

# homebrewのインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# xcodeをインストール
xcode-select --install

################
# python環境構築
################

# pyenvのインストール
brew install pyenv

# pyenvの設定をbash_profileに反映させる
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

# pythonのお好みのversionをインストール
pyenv install 3.6.5

# Macに情報を反映する
pyenv global 3.6.5


##########################
# Nodeのinstall
##########################

# nvm(node version managerのインストール)
git clone https://github.com/creationix/nvm.git ~/.nvm

# 反映させる
source ~/.nvm/nvm.sh

# bash_profileに記述
echo -e "if [[ -s ~/.nvm/nvm.sh ]]; then \n \t source ~/.nvm/nvm.sh \nfi" >> .bash_profile

# 安定板をインストール
nvm install stable


#################
# 必要なパッケージ
#################

# ターミナルをオシャンティーにする
brew install starship
echo 'eval "$(starship init bash)"' >> ~/.bash_profile
exec $SHELL -l

mkdir ~/.config
touch ~/.config/starship.toml

# ls の代替コマンド
brew install exa
echo "alias ls='exa -g --time-style=long-iso'" >> ~/.bashrc
echo "alias ll='ls -al'" >> ~/.bash_profile
exec $SHELL -l

# cat の代替コマンド(Doc https://github.com/sharkdp/bat/blob/master/doc/README-ja.md)
brew install bat

# fd の代替コマンド
brew install fd

# grep の代替コマンド
brew install ripgrep

# その他
brew install tree
brew install wget
brew install git


#################
# 必要なアプリとか
#################

# 必要なソフトをインストールするためにcaskをインストール
brew install caskroom/cask/brew-cask

# 開発環境
brew cask install vagrant
brew cask install virtualbox
brew cask install docker

# エディター
brew cask install sublime-text
brew cask install atom
brew cask install visual-studio-code

# ブラウザ
brew cask install google-chrome
brew cask install firefox

# キーボード設定（Mac用）
brew cask install karabiner
brew cask install shiftit

# その他アプリケーション
brew cask install sourcetree
brew cask install cyberduck
brew cask install sketch
brew cask install slack
brew cask install evernote
brew cask install skitch
brew cask install iterm2
brew cask install kindle
brew cask install postman
brew cask install google-drive
brew cask install prepros
brew cask install cheatsheet
brew cask install gitkraken
brew cask install tableplus
brew cask install spectacle
brew cask install macwinzipper
brew cask install  clipy

# プラグイン系
vagrant plugin install vagrant-vbguest

