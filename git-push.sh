#!/bin/bash

# 2023.02.09 - v. 0.7 - better git handling, major script revampp
# 2021.02.07 - v. 0.6 - git add --all * .[a-zA-Z]* , git remote set-url origin git+ssh: to not have
#                       password prompts during pushes
# 2021.01.30 - v. 0.4 - making this script more generic (by adding github_project_name variable)
# 2020.11.27 - v. 0.3 - changed rm to remove files from the directory not the whole directory
# 2020.11.26 - v. 0.2 - added second section with 'git pull'
# 2020.10.20 - v. 0.1 - initial release

. /root/bin/_script_header.sh

export github_project_name=github-bash_profile
export GIT_REPO_DIRECTORY=/root/github-bash_profile
export GIT_SSH_COMMAND='ssh -i $HOME/.ssh/id_SSH_ed25519_20230207_OpenSSH'

check_if_installed keychain
eval keychain -q --nogui --nocolor --eval id_rsa id_ed25519 id_SSH_ed25519_20230207_OpenSSH >/dev/null 2>&1

if [ -f $HOME/.keychain/$HOSTNAME-sh ];then
  . $HOME/.keychain/$HOSTNAME-sh
fi

keychain --nogui --nocolor id_rsa id_ed25519 id_SSH_ed25519_20230207_OpenSSH

batch_mode=0

if (( $# != 0 )) && [ "${1-nonbatch}" == "batch" ]; then
  echo ; echo "(PGM) enabling batch mode (no questions asked)"
  batch_mode=1
fi

cd "${GIT_REPO_DIRECTORY}" || exit 2

git remote set-url origin git+ssh://git@github.com/pmatuszy/${github_project_name}.git

echo "Do you want to do git push? [y/N]"
if (( $batch_mode == 0 ));then
  read -t 300 -n 1 p     # read one character (-n) with timeout of 300 seconds
else
  echo "y (autoanswer in a batch mode)"
  p=y # batch mode ==> we set the answer to 'y'
fi

echo
echo
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  git add * .[a-zA-Z]*
  git commit -m \""new push from `hostname` @ `date '+%Y.%m.%d %H:%M:%S'`"\" | boxes -s 90x6 -a l -d ada-box
  git push
else
  echo "no means no - I am exiting..."
  exit 1
fi

echo
echo
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  git add --all * .[a-zA-Z]*
  git commit -a -m \""new push from `hostname` @ `date '+%Y.%m.%d %H:%M:%S'`"\"

  echo git push | boxes -s 40x5 -a c
  git push
  if (( $? != 0 )); then
    echo ; echo '(PGM) nie moge zrobic pusha - wychodze' ; echo
    exit 2
  fi
else
  echo "no means no - I am exiting..."
  exit 1
fi

if (( $batch_mode == 0 ));then
  ./git-pull.sh
else
  ./git-pull.sh batch
fi

. /root/bin/_script_footer.sh
