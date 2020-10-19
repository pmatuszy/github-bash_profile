# profile
profiles for Linux user. 

It has many useful aliases to be more productive.


cd /encrypted/root
rm -rf /encrypted/root/github-rclone-restic || { echo "nie moge usunac katalogu - wychodze" ; exit 11; }
git clone git+ssh://git@github.com/pmatuszy/github-rclone-restic.git ;
cd /encrypted/root/github-rclone-restic
