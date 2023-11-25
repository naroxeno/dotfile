#/bin/sh
killall trayer
if [ $? != 0 ]; then
  trayer --edge top --widthtype pixel --height 22 
fi
