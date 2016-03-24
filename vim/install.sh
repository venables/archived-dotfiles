# install Vundle
if [ ! -d ~/.vim/bundle ]
then
  echo "Installing Vundle ..."
  mkdir -p ~/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
