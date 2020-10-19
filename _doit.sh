@echo off

rm profile.tar profile.tar.bz2
chmod 755 bash_profile bashrc crs_stat-t
chmod 644 wynik.txt

tar cvf profile.tar bash_profile bashrc install.sh crs_stat-t wynik.txt pickora .pgm-boundle-version dfc login.sql i.sql

ls -l
bzip2 -9 profile.tar
uuencode profile.tar.bz2 profile.tar.bz2 | unix2dos > profile.tar.bz2.uue

echo now:
echo "git add * .pgm-boundle-version"
echo git commit -m \""new push from _doit.sh (`hostname`) @ `date '+%Y.%m.%d %H:%M:%S'`"\"
echo "git push"

echo "DEBUG: do you want to do git push? [y/N]"
read -t 5 -n 1 p     # read one character (-n) with timeout of 5 seconds
if [ "${p}" == 'y' -o  "${p}" == 'y' ]; then
  git add *
  git commit -m \""new push from _doit.sh (`hostname`) @ `date '+%Y.%m.%d %H:%M:%S'`"\"
  git push
fi 
