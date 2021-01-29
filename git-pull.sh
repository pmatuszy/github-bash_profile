# 2020.11.27 - v. 0.1 - initial release

echo
echo "Do you want to do kind of git pull and configure local scripts? [y/N]"
read -t 5 -n 1 p     # read one character (-n) with timeout of 5 seconds
echo
echo
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  cd $HOME
  rm -rf $HOME/github-bin/*
  rm -rf $HOME/github-bin/.git
  git clone git+ssh://git@github.com/pmatuszy/github-bin.git
  cp -v github-bin/* $HOME/bin
  cp -v github-bin/`hostname`/* $HOME/bin
  cd github-bin
  git status
else
  echo "no means no - I am exiting..."
  exit 1
fi
