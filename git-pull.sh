# 2021.01.30 - v. 0.2 - making this script more generic (by adding github_project_name variable)
# 2020.11.27 - v. 0.1 - initial release

github_project_name=`pwd`
github_project_name=`basename $github_project_name`

echo
echo "Do you want to do kind of git pull and configure local scripts? [y/N]"
read -t 60 -n 1 p     # read one character (-n) with timeout of 5 seconds
echo
echo
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  cd $HOME
  rm -rf $HOME/${github_project_name}/*
  rm -rf $HOME/${github_project_name}/.git $HOME/${github_project_name}/.[a-zA-Z]*
  git clone git+ssh://git@github.com/pmatuszy/${github_project_name}.git
  cd $HOME/${github_project_name}
  ./install.sh
  git status
else
  echo "no means no - I am exiting..."
  exit 1
fi

