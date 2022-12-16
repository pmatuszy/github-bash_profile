# 2021.02.10 - v. 0.2 - added some structural changes - too many changes to describe them here :-)
# 20xx.xx.xx - v. 0.1 - initial release


echo "Platform: `uname -s`"

export profile_location_dir=/root/pgm
export profile_location_dir=/home/grid/pgm
export profile_location_dir=/home/oracle/pgm

export profile_location_dir=$HOME/pgm
export profile_location_dir=$HOME

echo "profile_location_dir = ${profile_location_dir}"
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

mkdir ${profile_location_dir}/bin ${profile_location_dir}/lib 2>/dev/null

chmod 644 ${profile_location_dir}/.toprc 2>/dev/null

cp bashrc ${profile_location_dir}
cp bash_profile ${profile_location_dir}

mv dfc ${profile_location_dir}/bin 2>/dev/null

if [[ "$USER" == "oracle" || "$USER" == "grid" ]]; then

  mv crs_stat-t dfc b${profile_location_dir}/in 2>/dev/null
  mv pickora b${profile_location_dir}/in 2>/dev/null

  mkdir -p s${profile_location_dir}/qlplus/admin 2>/dev/null
  mv login.sql i.sql s${profile_location_dir}/qlplus/admin 2>/dev/null

  pushd .
  cd ${profile_location_dir}
  chmod 644 sqlplus/admin/login.sql sqlplus/admin/i.sql 2>/dev/null

  chown ${LOGNAME} bin/crs_stat-t bashrc bash_profile bin lib
  chmod 755 bin/crs_stat-t bin/pickora bin lib bashrc bash_profile bin/dfc
  popd

  mv wynik.txt ${profile_location_dir}/bin 2>/dev/null
  
  pushd .
  cd ${profile_location_dir}
 
  chmod 644 bin/wynik.txt .pgm-boundle-version 2>/dev/null

  touch adrci_history expdp_history impdp_history sqlplus_history asmcmd_history dgmgrl_history .moja_historia_${USER}
  chmod 666 adrci_history expdp_history impdp_history sqlplus_history 2> /dev/null
  chmod 666 asmcmd_history dgmgrl_history .moja_historia_${USER} 2>/dev/null
  popd 
else
  rm login.sql i.sql crs_stat-t pickora wynik.txt 2>/dev/null
fi

rm $profile_location_dir/.bash_profile $profile_location_dir/.bashrc 2>/dev/null
ln -s $profile_location_dir/bash_profile $profile_location_dir/.bash_profile
ln -s $profile_location_dir/bashrc $profile_location_dir/.bashrc

pushd .
cd ${profile_location_dir}

cat bash_profile |sed "s@^export profile_location_dir=.*@export profile_location_dir=$profile_location_dir@" > a
mv a bash_profile

cat bashrc |sed "s@^export profile_location_dir=.*@export profile_location_dir=$profile_location_dir@g" > a
mv a bashrc

popd 

cp .pgm-boundle-version ${profile_location_dir}
cp .vimrc ${profile_location_dir}
cp .screenrc ${profile_location_dir}

chmod 711 $HOME

rm -f a profile.tar test.sh
rmdir ${profile_location_dir}/bin ${profile_location_dir}/lib 2>/dev/null
