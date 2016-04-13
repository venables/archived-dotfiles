# install Vundle
if [ ! -d ~/.config/base16-shell ]
then
  echo "Installing base16-shell ..."
  mkdir -p ~/.config
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

