#sudo apt install -y git

#git clone https://github.com/nhemsley/dotfiles.git $DOTFILES


DOTFILES_ROOT=~/.dotfiles
DOTFILES_CONFIG=$DOTFILES_ROOT/config
DOTFILES_ENVIRONMENTS=$(ls $DOTFILES_CONFIG/environments/)

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

DOTFILES_CURRENT_ENV=$(cat $DOTFILES_CONFIG/environment)
DOTFILES_CURRENT_ENV_DIR=$DOTFILES_CONFIG/environments/$DOTFILES_CURRENT_ENV

[ -f $DOTFILES_CURRENT_ENV_DIR/apt-installs ] && sudo apt install -y $(cat $DOTFILES_CURRENT_ENV_DIR/apt-installs)

[ -f $DOTFILES_CURRENT_ENV_DIR/snap-installs ] && . $DOTFILES_CURRENT_ENV_DIR/snap-installs

exit

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

. ~/.dotfiles/bash.d/homebrew.sh

brew install rcm

rcup

. ~/.dotfiles/config/snap-installs

mkdir ~/.installs
brew tap nhemsley/homebrew-env
brew install homebrew-env

brew bundle

