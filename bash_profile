# v. 2.12- 2021.03.04 - added HISTIGNORE and HISTTIMEFORMAT variable
# v. 2.11- 2020.03.05 - added UBS specific environment variables
# v. 2.10- 2019.11.21 - changed od paths from pg to pgm, wrong PATH - fixed now
# v. 2.09- 2019.11.19 - changed stty erase to '^?'
# v. 2.08- 2019.11.15 - added ORACLE_PATH as SQLPATH is from 12cR2 no longer in use
# v. 2.07- 2018.03.22 - changed umask 022 to umask 0022 and added ulimit / umask section for grip user
#                       problems with XDMCP
# v. 2.06- 2013.10.13 - DISPLAY is only set when this env variable is NOT set (forcing DISPLAY settting made
#                       problems with XDMCP
# v. 2.05- 2013.08.04 - added checking of $SSH_CLIENT and $SHLVL variable so when it is set exit command is
#                                               not executed (it caused problems on Linux with GDM X Window interactive logon)
# v. 2.04- 2012.05.23 - ORACLE_BASE is set in alternative way.
# v. 2.03- 2012.05.07 - ORACLE_BASE is set to /orcl/app/oracle ONLY when ORACLE_BASE is not set
#                       by any other scripts
# v. 2.02- 2012.04.04 - ORA_CRS_HOME is set automatically if CRS is running on the box
# v. 2.01- 2012.03.19 - profile_location_dir should be now set automatically on different hosts
#                       but the detection of it was changed, changed dip alias and detection of IP
#                       for setting DISPLAY variable, setting SQLPATH a new way as HP-UX complained
#                       with warning 'bash: SQLPATH: unbound variable'
# v. 2.00- 2011.10.27 - profile_location_dir should be now set automatically on different hosts
#                       http_proxy is now only set when var. JPMORGAN is 1
#                       crs_stat-t is now case insensitive
# v. 1.99- 2011.03.30 - moved comment about rlwrap colors to bashrc
# v. 1.98- 2011.03.01 - added http_proxy variable
# v. 1.97- 2011.01.17 - added SQLPATH variable
# v. 1.96- 2011.01.14 - added RLWRAP_HOME defaulting to ${profile_location_dir}
# v. 1.95- 2010.04.08 - added ORACLE_HOME/bin and ORACLE_HOME/OPatch to the PATH
# v. 1.94- 2010.04.07 - profile location lib is now first in LD_LIBRARY_PATH
# v. 1.93- 2010.03.31 - added TMOUT environment variable (actually unsetting it if it is set)
# v. 1.92- 2010.03.17 - added EDITOR environment variable
# v. 1.91- 2010.02.03 - profile_location_dir is automatically calculated
# v. 1.9 - 2010.01.12 - changes to the way CRS_HOME is set
# v. 1.8 - 2009.08.11 - a bug - now everywhere I use profile_location_dir env. setting
# v. 1.7 = 2008.11.20 - added TERM  & profile_location_dir parameters & changes to SHELL invocation
# v. 1.6 = 2008.07.14 - added HISTCONTROL HISTSIZE and HISTFILESIZE
# v. 1.5 - 2008.05.16 - addes VRTS paths to PATH and MANPATH
# v. 1.4 - 2008.04.02 - added exit after two "$SHELL ..." lines
# v. 1.3 - 2008.04.02 - updated PATH to include /usr/openwin/bin:/usr/local/sbin
# v. 1.2 - 2008.03.31 - added DISPLAY,updated PATH to include /usr/openwin/bin
# v. 1.1 - 2008.03.31 - added LD_LIBRARY_PATH
# v. 1.0 - 2008.03.28
#


#####################################
# settig profile_location_dir START #
#####################################
export profile_location_dir=/root
JPMORGAN=0
MATUSZYK=0
KGP=0
UBS=0
cat /etc/hosts|grep -q jpmchase
if (( $? == 0 )); then JPMORGAN=1 ; fi

cat /etc/hosts|grep -q matuszyk
if (( $? == 0 )); then MATUSZYK=1 ; fi

cat /etc/hosts|grep -q 'gov.pl'
if (( $? == 0 )); then KGP=1 ; fi

if [ $KGP == 1 ]
 then
    if [ "$USER" == "root" ]; then
      export profile_location_dir=/root/pgm
    else
      export profile_location_dir=$HOME/pgm
    fi
fi

if [ $MATUSZYK == 1 ]
 then
    if [ "$USER" == "root" ]; then
      export profile_location_dir=/root
    else
      export profile_location_dir=$HOME
    fi
fi

if [ $JPMORGAN == 1 ]
 then
    if [ "$USER" == "oracle" ]; then
      export profile_location_dir=/export/home/r062068
    else
      export profile_location_dir=$HOME
    fi
fi

if [ $UBS == 1 ]
 then
    export PBSETUTMP=no
    export PBREMEX=yes
fi
#####################################
# settig profile_location_dir END   #
#####################################

# ustawianie ORA_CRS_HOME - poczatek
#export ORA_CRS_HOME=/orcl/grid/oracle/product/11.2.0.1/grid
if [[ "`ps -ef | grep crsd.bin|grep -v grep|wc -l`" == 1 ]]
  then
      export ORA_CRS_HOME=`ps -ef | grep crsd.bin|grep -v grep |sed 's/\/bin\/crsd.bin.*//g'|grep root|sed 's/.* \//\//g'`
fi
# ustawianie ORA_CRS_HOME - koniec

export CRS_HOME=${ORA_CRS_HOME:-}

#if [ "${ORACLE_BASE:-}" == "" ]; then
#      export ORACLE_BASE=/orcl/app/oracle
#fi

export ORACLE_BASE=${ORACLE_BASE:-/u01/app/oracle}
export ORACLE_HOME=${ORA_CRS_HOME:-}

export PATH=${PATH}:/usr/sbin:/usr/openwin/bin:${HOME}/bin:/usr/local/bin:/usr/local/sbin:/usr/lib/vxvm/bin:/opt/VRTSvxfs/sbin:/opt/VRTSvcs/bin:/opt/VRTS/bin:/opt/VRTSvcs/rac/bin:/opt/VRTSob/bin:/sbin:/opt/VRTSllt:/opt/sfw/bin:${profile_location_dir}/bin:/opt/sfw/bin:/sbin:${ORACLE_HOME}/bin:${ORACLE_HOME}/OPatch:${ORA_CRS_HOME}/bin

export SHELL=`type bash|awk '{print $3}'`
export PAGER=less
export LD_LIBRARY_PATH=${profile_location_dir}/lib:${LD_LIBRARY_PATH}:${HOME}/lib
export MANPATH=$MANPATH:/opt/VRTS/man:/usr/man:/usr/local/man:/usr/demo/link_audit/man:/usr/sfw/share/man:/usr/sfw/lib/webmin/perlmod/man:/usr/sfw/lib/webmin/mscstyle3/man:/usr/sfw/lib/webmin/man:/usr/sfw/lsr/X11/share/man:/usr/local/ssl/man:/usr/local/php/man:/usr/local/man:/usr/local/mysql/man:/usr/local/doc/ncftp/doc/man:/usr/local/doc/openldap/doc/man:/usr/local/doc/tiff/html/man:/usr/local/doc/libidn/doc:/usr/local/doc/snownews/doc/man:/usr/local/doc/apache/docs/man:/usr/local/doc/confuse/doc/man:/usr/local/doc/ncurses/doc/html/man:/usr/local/doc/neon/doc/man:/usr/local/doc/libnet/doc/man:/usr/local/doc/hf/man:/usr/local/netpbm/man:/usr/local/share/man:/usr/local/apache2/man:/usr/local/teTeX/man:/usr/local/samba/man:/usr/local/qt/doc/man:/usr/local/qt/src/3rdparty/libmng/doc/man:/usr/local/pgsql/man:/usr/loc/usr/perl5/5.6.1/man:/usr/perl5/5.8.3/man:/usr/lib/cc-ccr/man:/usr/openwin/share/man:/usr/apache2/man:/usr/dt/share/man:/usr/jdk/instances/jdk1.5.0/man:/usr/j2se/man:/usr/postgres/8.2/man

export SQLPATH=${SQLPATH:-${profile_location_dir}/sqlplus/admin}
export ORACLE_PATH=${SQLPATH}       # from 12cR2 SQLPATH is no longer in use
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTIGNORE="*RCLONE_CONFIG_PASS*:*RCLONE_CONFIG*:*RESTIC_REPOSITORY*:*RESTIC_PASSWORD*"
export HISTTIMEFORMAT="%F %T "
export TERM=xterm
export EDITOR=vi
export TMOUT=

# let's clean up some history (just in case)
for p in `history |grep "export RCLONE_CONFIG_PASS="|awk '{print $1}'|sort -nr`;do history -d $p ; done
for p in `history |grep "export RCLONE_CONFIG="|awk '{print $1}'|sort -nr`;do history -d $p ; done
for p in `history |grep "export RESTIC_REPOSITORY="|awk '{print $1}'|sort -nr`;do history -d $p ; done
for p in `history |grep "export RESTIC_PASSWORD="|awk '{print $1}'|sort -nr`;do history -d $p ; done

export RLWRAP_HOME=${profile_location_dir}

if [ $JPMORGAN == 1 ]
  then
    export http_proxy=http://emeaproxy.jpmchase.net:8080
fi

# dont limit the size of the history file.
unset HISTFILESIZE
export HISTFILE=${profile_location_dir}/.moja_historia_${LOGNAME}
################################################################################################

stty erase '^?'
stty kill '^U'
stty intr '^C'

if [[ $USER = "oracle" ]]; then
        if [ $SHELL = "/bin/ksh" ]; then
              ulimit -u 16384
              ulimit -n 65536
        else
              ulimit -u 16384 -n 65536
        fi
        umask 0022
fi

if [[ $USER = "grid" ]]; then
        if [ $SHELL = "/bin/ksh" ]; then
              ulimit -u 16384
              ulimit -n 65536
        else
              ulimit -u 16384 -n 65536
        fi
        umask 0022
fi

if [[ $DISPLAY = ""  ]]; then
  if [ -f ${profile_location_dir}/bashrc ]
   then
      if [[ "`tty`" = "/dev/console" ]]
        then
          . ${profile_location_dir}/bashrc
      else
        if [ `uname -s` == 'HP-UX' ];then
          export DISPLAY=`who am i -R | awk '{print $6}'| tr -d '()'`:0
        else
          export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0
        fi
        if [ "$DISPLAY" == ":0" ];then DISPLAY=`who am i| awk '{print $5}'| tr -d '()'`:0;fi
        echo DISPLAY=${DISPLAY}
        $SHELL --rcfile ${profile_location_dir}/bashrc
        if [[ ! -z "${SSH_TTY}" ]]; then     # remote session
          exit
        fi
        if (( ${SHLVL} > 1 )); then     # can be a remote session or NOT top terminal
          exit
        fi
      fi
   else
     if [[ "`tty`" = "/dev/console" ]]
        then
          . /root/pgm/bashrc
     else
          export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0
          if [ "$DISPLAY" == ":0" ];then DISPLAY=`who am i| awk '{print $5}'| tr -d '()'`:0;fi
          echo DISPLAY=${DISPLAY}
          $SHELL --rcfile ${profile_location_dir}/bashrc
          exit
     fi
  fi
else
  if [[ "`tty`" = "not a tty" ]];then     # XDMCP session
    $SHELL --rcfile ${profile_location_dir}/bashrc
  else    # ssh session
    $SHELL --rcfile ${profile_location_dir}/bashrc && exit
  fi
fi
