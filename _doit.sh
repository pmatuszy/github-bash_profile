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
echo git commit -m \""new push @ `date '+%Y.%m.%d %H:%M:%S'`"\"
echo "git push"
