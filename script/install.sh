#sudo apt install -y git

#git clone https://github.com/nhemsley/dotfiles.git ~/.dotfiles


DOTFILES_BRANCHES=$(git -C ~/.dotfiles branch --list|sed s/\*\ //)

echo "Available setup branches:"
for BRANCH in $DOTFILES_BRANCHES
do

echo $DOTFILES_BRANCHES
echo "Use Branch:"
read -r DOTFILES_USE_BRANCH

echo $DOTFILES_USE_BRANCH




exit


sudo apt install -y $(cat ~/.dotfiles/config/apt-installs)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

. ~/.dotfiles/bash.d/homebrew.sh

brew install rcm

rcup

. ~/.dotfiles/config/snap-installs

mkdir ~/.installs
brew tap nhemsley/homebrew-env
brew install homebrew-env

brew bundle

