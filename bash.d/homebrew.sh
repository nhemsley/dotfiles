export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_BUNDLE_FILE=$HOME/.Brewfile

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
