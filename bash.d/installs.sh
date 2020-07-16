DIRS=$(ls ~/.installs)

for DIR in $DIRS; do
  if [ -d $DIR/bin ]
  then
    export PATH=$PATH:$DIR/bin
  else
    export PATH=$PATH:$DIR
  fi

done
