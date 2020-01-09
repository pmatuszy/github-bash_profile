mkdir -p $HOME/pgm/bin
cp _komplet.zip $HOME/pgm/bin

cd $HOME/pgm/bin
unzip _komplet.zip
rm _komplet.zip
chmod 755 rz sz uuencode uudecode pbzip2
cd -
if (( $1 == 1 )) ; then 
  rm runme.sh _komplet.zip ; 
fi
