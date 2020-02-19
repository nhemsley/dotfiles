# Iterate through each install, and add the bin path to PATH if it exists
INSTALLS_DIR=$HOME/.installs
INSTALLS=$(ls $INSTALLS_DIR)
  for INSTALL in $INSTALLS; do
  [ -d $INSTALLS_DIR/$INSTALL/bin ] && export PATH="$PATH:$INSTALLS_DIR/$INSTALL/bin"
  done