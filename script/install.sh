#sudo apt install -y git

#git clone https://github.com/nhemsley/dotfiles.git $DOTFILES


DOTFILES_ROOT = ~/.dotfiles
DOTFILES_CONFIG = $DOTFILES_ROOT/config
DOTFILES_ENVIRONMENTS=$(ls $DOTFILES/config/environments/)

echo "Available setup environments:"
echo ""

for DOTFILES_ENVIRONMENT in $DOTFILES_ENVIRONMENTS
do
    echo $DOTFILES_ENVIRONMENT
done

echo ""
echo "Use Environment:"

read -r DOTFILES_USE_ENVIRONMENT

echo $DOTFILES_USE_ENVIRONMENT > ~/.dotfiles/config/environment

DOTFILES_CURRENT_ENVIRONMENT=$(cat $DOTFILES_CONFIG/environment)
sudo apt install -y $(cat $DOTFILES_CONFIG/environments/$DOTFILES_CURRENT_ENVIRONMENT)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

. ~/.dotfiles/bash.d/homebrew.sh

brew install rcm

rcup

. ~/.dotfiles/config/snap-installs

mkdir ~/.installs
brew tap nhemsley/homebrew-env
brew install homebrew-env

brew bundle

