if test ! $(which grunt)
then
  echo "Installing grunt-cli ..."
  npm install grunt-cli -g
fi

if test ! $(which nodemon)
then
  echo "Installing nodemon ..."
  npm install nodemon -g
fi

if test ! $(which jscs)
then
  echo "Installing jscs ..."
  npm install jscs -g
fi

if test ! $(which jshint)
then
  echo "Installing jshint ..."
  npm install jshint -g
fi	
