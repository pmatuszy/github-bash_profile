#!/bin/bash

# 2023.02.09 - v. 0.3 - better git handling, major script revampp
# 2021.01.30 - v. 0.2 - making this script more generic (by adding github_project_name variable)
# 2020.11.27 - v. 0.1 - initial release

. /root/bin/_script_header.sh

export GIT_REPO_DIRECTORY=/root/github-bash_profile
export github_project_name=github-bash_profile

export GIT_SSH_COMMAND='ssh -i $HOME/.ssh/id_SSH_ed25519_20230207_OpenSSH'

eval keychain -q --nogui --nocolor --eval id_rsa id_ed25519 id_SSH_ed25519_20230207_OpenSSH 2>&1

if [ -f $HOME/.keychain/$HOSTNAME-sh ];then
  . $HOME/.keychain/$HOSTNAME-sh
fi

batch_mode=0

if (( $# != 0 )) && [ "${1-nonbatch}" == "batch" ]; then
  echo ; echo "(PGM) enabling batch mode (no questions asked)"
  batch_mode=1
fi

echo
echo "Do you want to do kind of git pull and configure local scripts? [y/N]"
if (( $batch_mode == 0 ));then
  read -t 300 -n 1 p     # read one character (-n) with timeout of 300 seconds
else
  echo "y (autoanswer in a batch mode)"
  p=y # batch mode ==> we set the answer to 'y'
fi

echo
echo
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  cd $HOME

  # sprawdzam, czy mam dostep do zdalnego repo
  echo git ls-remote git+ssh://git@github.com/pmatuszy/"${github_project_name}".git | boxes -s 70x5 -a c
  git ls-remote git+ssh://git@github.com/pmatuszy/"${github_project_name}".git 2>&1 >/dev/null
  if (( $? != 0 )); then
    echo  ; echo ; echo "Nie mam dostepu do zdalnego repozytorium.... WYCHODZE" ; echo ; echo
    exit 2
  fi

  cd "${GIT_REPO_DIRECTORY}" || exit 2

  echo git pull git+ssh://git@github.com/pmatuszy/"${github_project_name}".git | boxes -s 70x5 -a c
  git pull git+ssh://git@github.com/pmatuszy/"${github_project_name}".git
  if (( $? != 0 )); then
    echo  ; echo ; echo "Pull was not successful... WYCHODZE" ; echo ; echo
    exit 3
  fi

  cd "$HOME/${github_project_name}"
  if (( $batch_mode == 0 ));then
    ./install.sh 
  else
    ./install.sh batch
  fi
else
  echo "no means no - I am exiting..."
  exit 1
fi

