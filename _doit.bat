@echo off

del profile.tar profile.tar.bz2
cygwin\chmod 755 bash_profile bashrc crs_stat-t
cygwin\chmod 644 wynik.txt

rem cygwin\md5sum.exe -b bash_profile > bash_profile.md5
rem cygwin\md5sum.exe -b bashrc > bashrc.md5

rem cygwin\tar cvf profile.tar bash_profile bashrc bash_profile.md5 bashrc.md5 install.sh crs_stat-t wynik.txt pickora .pgm-boundle-version

cygwin\tar cvf profile.tar bash_profile bashrc install.sh crs_stat-t wynik.txt pickora .pgm-boundle-version dfc login.sql i.sql

cygwin\ls -l 
cygwin\bzip2 -9 profile.tar 
cygwin\uuencode profile.tar.bz2 profile.tar.bz2 | cygwin\unix2dos > profile.tar.bz2.uue

pause
