if test ! $(which spoof)
then
  npm install spoof -g
fi

if test ! $(which nodemon)
then
  npm install nodemon -g
fi

if test ! $(which jscs)
then
  npm install jscs -g
fi

if test ! $(which jshint)
then
  npm install jshint -g
fi	
