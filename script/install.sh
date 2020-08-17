sudo apt install -y git

git clone git@github.com:nhemsley/dotfiles.git ~/.dotfiles

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

