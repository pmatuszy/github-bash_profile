# profile
profiles for Linux user. 

It has many useful aliases to be more productive.

```
cd /root
rm -rf /root/github-bash_profile || { echo "nie moge usunac katalogu - wychodze" ; exit 11; }
git clone git+ssh://git@github.com/pmatuszy/github-bash_profile.git ;
cd github-bash_profile
bzip -d profile.tar.bz2 ; tar xvf profile.tar ; echo $? ; ls -l 
```
