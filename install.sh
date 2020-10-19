echo "Platform: `uname -s`"

export profile_location_dir=/root/pgm
export profile_location_dir=/home/grid/pgm
export profile_location_dir=/home/oracle/pgm

export profile_location_dir=$HOME/pgm
export profile_location_dir=$HOME

echo "profile_location_dir = $profile_location_dir"
echo "is that ok? [y/N]"

read -n 1 a

if [ "$a" != "y" ];then
  echo exiting then...
  exit 1
fi

echo 
echo installing scripts...
echo
komenda=""

mkdir bin lib 2>/dev/null

chmod 644 .toprc 2>/dev/null

mv dfc bin 2>/dev/null

if [[ "$USER" == "oracle" || "$USER" == "grid" ]]; then

  mv crs_stat-t dfc bin 2>/dev/null
  mv pickora bin 2>/dev/null

  mkdir -p sqlplus/admin 2>/dev/null
  mv login.sql i.sql sqlplus/admin 2>/dev/null
  chmod 644 sqlplus/admin/login.sql sqlplus/admin/i.sql 2>/dev/null

  chown ${LOGNAME} bin/crs_stat-t bashrc bash_profile bin lib
  chmod 755 bin/crs_stat-t bin/pickora bin lib bashrc bash_profile bin/dfc

  mv wynik.txt bin 2>/dev/null
  chmod 644 bin/wynik.txt .pgm-boundle-version 2>/dev/null

  touch adrci_history expdp_history impdp_history sqlplus_history asmcmd_history dgmgrl_history .moja_historia_oracle
  chmod 666 adrci_history expdp_history impdp_history sqlplus_history asmcmd_history dgmgrl_history .moja_historia_oracle 2>                                                                                                                                                   /dev/null
else
  rm login.sql i.sql crs_stat-t pickora wynik.txt
fi

echo "deflogin off" > $HOME/.screenrc

rm $profile_location_dir/.bash_profile $profile_location_dir/.bashrc 2>/dev/null
ln -s $profile_location_dir/bash_profile $profile_location_dir/.bash_profile
ln -s $profile_location_dir/bashrc $profile_location_dir/.bashrc

cat bash_profile |sed "s@^export profile_location_dir=.*@export profile_location_dir=$profile_location_dir@" > a
mv a bash_profile

cat bashrc |sed "s@^export profile_location_dir=.*@export profile_location_dir=$profile_location_dir@g" > a
mv a bashrc

chmod 711 $HOME

rm -f a profile.tar test.sh
rmdir bin lib 2>/dev/null
