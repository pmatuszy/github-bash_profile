#!/bin/bash

# 2023.03.03 - v. 0.2 - added _script* calls and checks for the installed packages
# 20xx.xx.xx - v. 0.1 - initial release (date unknown)


. $HOME/bin/_script_header.sh

check_if_installed unix2dos dos2unix
check_if_installed uuencode sharutils

rm profile.tar profile.tar.bz2
chmod 755 bash_profile bashrc crs_stat-t
chmod 644 wynik.txt

tar cvf profile.tar bash_profile bashrc install.sh crs_stat-t wynik.txt pickora .pgm-boundle-version dfc login.sql i.sql

ls -l
bzip2 -9 profile.tar
uuencode profile.tar.bz2 profile.tar.bz2 | unix2dos > profile.tar.bz2.uue

. $HOME/bin/_script_footer.sh

