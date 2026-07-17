#!/bin/bash

# v. 20260717.223420 - English-only; rlwrap-completions.txt in tarball
# v. 20260716.162620 - version format YYYYMMDD.HH24MISS
# 2026.07.15 - v. 0.4 - profile.tar uses .pgm-bundle-version; dfc removed from tarball
# 2023.03.16 - v. 0.3 - rm 2> redirection added, dfc moved frmon bin/ to .
# 2023.03.03 - v. 0.2 - added _script* calls and checks for the installed packages
# 20xx.xx.xx - v. 0.1 - initial release (date unknown)


. $HOME/bin/_script_header.sh

check_if_installed unix2dos dos2unix
check_if_installed uuencode sharutils

rm profile.tar profile.tar.bz2 2>/dev/null
chmod 755 bash_profile bashrc crs_stat-t
chmod 644 rlwrap-completions.txt

tar cvf profile.tar bash_profile bashrc install.sh crs_stat-t rlwrap-completions.txt pickora .pgm-bundle-version login.sql i.sql

ls -l
bzip2 -9 profile.tar
uuencode profile.tar.bz2 profile.tar.bz2 | unix2dos > profile.tar.bz2.uue

. $HOME/bin/_script_footer.sh

