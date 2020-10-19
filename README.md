# profile
profiles for Linux user. 

It has many useful aliases to be more productive.

```
cd ${HOME}
rm -rf ${HOME}/github-bash_profile || { echo "nie moge usunac katalogu - wychodze" ; exit 11; }
git clone git+ssh://git@github.com/pmatuszy/github-bash_profile.git ;
cd github-bash_profile
cp profile.tar.bz2 ${HOME}
cd ${HOME}
bzip2 -d profile.tar.bz2 ; tar xvf profile.tar ; echo $? ; ls -l 
dos2unix bashrc
dos2unix bash_profile

dos2unix test.sh

```
