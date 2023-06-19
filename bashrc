# v. 3.23- 2023.06.19 - help-boxes is now a function instead of an alias
# v. 3.22- 2023.06.16 - bugfix release: USER detection changed to [[ "$USER" =~ (.*grid$|^grid.*|.*ora$|^ora*.) ]]
# v. 3.21- 2023.06.16 - some tweaks for oracle/grid users, exports moved directly under the respective function
# v. 3.20- 2023.06.15 - help-find is now a function instead of alias
# v. 3.19- 2023.06.15 - changed help-disk alias, bugfix: htop is now a function instead of alias
# v. 3.18- 2023.06.14 - added help-find alias, aliases help-* beautified, added dfh and dfm functions 
# v. 3.17- 2023.06.09 - bugfix: if gdb is not present it won't be executed
# v. 3.16- 2023.06.08 - exporting all functions, added help-oracle, help-disk, help-vi, expdp, 
#                       prstat and aptitude-all are created only when commands are available in the OS
# v. 3.15- 2023.06.06 - df changed 
# v. 3.14- 2023.06.05 - aptitude-all is now a funtion, cosmetic change in df
# v. 3.13- 2023.06.05 - df and ver are now funtions, cosmetic change in dba,asm,impdp,expdp,adrci,asmcmd,dgmgrl
# v. 3.12- 2023.06.01 - cosmetic changes to setting profile_location_dir 
# v. 3.11- 2023.05.24 - a lot of changes: function screen, and many more
# v. 3.10- 2023.05.24 - bugfix: SOCGEN customizations
# v. 3.09- 2023.05.23 - added alias help-rsync, vi and vim aliases, changed screen
# v. 3.08- 2023.03.23 - added SOCGEN customizations
# v. 3.07- 2023.03.03 - changed aptitude-all by adding checking # of pkgs to be updated
# v. 3.06- 2023.02.09 - added github aliases,aptitude-all
# v. 3.05- 2022.12.16 - bugfix: removed hardcoded root from XDG_DATA_HOME (now it is $USER)
# v. 3.04- 2022.12.07 - added help-sshfs
# v. 3.03- 2022.11.14 - added help-date and help-dd aliases
# v. 3.02- 2022.07.01 - added some LC_ variables to beautify output formats 
# v. 3.01- 2021.09.09 - added enable-bracketed-paste to disable strange behaviour of the new bash
# v. 3.02- 2021.08.28 - added LC_TIME by date wyswietlal 24h czas
# v. 3.01- 2021.05.20 - added XDG_DATA_HOME check and /encrypted mount check
# v. 3.00- 2021.04.14 - change LANG by removing ".UTF-8" part - pass and mc should look good now
# v. 2.99- 2021.03.10 - reverted change to PROMPT_COMMAND
# v. 2.98- 2021.03.04 - added PROMPT_COMMAND to reread history file after each command
# v. 2.97- 2021.03.03 - modified LANG variable from "en_US" to "en_US.UTF-8"
# v. 2.96- 2020.09.01 - added LANG variable (so on linux mc looks good)
# v. 2.95- 2020.03.05 - added UBS specific environment variables
# v. 2.94- 2019.11.29 - changing the terminal size to 181x71 on Linux systems
# v. 2.93- 2019.11.28 - in asm and dba added feature of changing the terminal size to 175x71 on Linux systems
# v. 2.92- 2019.11.20 - bugfix in asmcmd function and unsetting ORACLE_PATH in asmcmd function
#                       added dgsc, dgscv, dgscl aliases
# v. 2.91- 2019.11.19 - small changes to asmcmd function (check for -p command line argument), added l alias
# v. 2.90- 2019.11.15 - small changes to oracle function
# v. 2.89- 2019.11.14 - new aliases soh,sob (show-oracle-home,show-oracle-base), major revamp of dba,asm,impdp,expdp,adrci,asmcmd,dgmgrl
# v. 2.88- 2019.11.14 - one typo corrected, tns and pmon aliases moved from oracle and grid only section to 'all-users' section
# v. 2.87- 2019.11.06 - new alias dgsp, dgss, better oh,ob,dbs,tns aliases, some aliases are set only for non-root users
#                       alias hg changed to function so we can evaluate its arguments (if provided)
#                       two new aliases tha and cha(abbreviation from 'tail home alert' and 'cat home alert'
#                       alias paul renamed to pgm and improved with ls -l at the end
# v. 2.86- 2017.11.13 - zmiana unconditional tput to conditional one (added "tty -s && ")
# v. 2.85- 2013.12.20 - new version of talert alias for RAC env.
# v. 2.84- 2013.09.02 - alias ls added for linux (no text coloring and full time is displayed)
# v. 2.83- 2013.08.02 - alias talert changed
# v. 2.82- 2013.05.23 - small change the way ORACLE_SID is checked if it is set, new alias ll added
# v. 2.81- 2012.05.22 - added adrhome alias
# v. 2.80- 2012.05.07 - changed pmon alias (displays also .pgm-boundle-version file version),
# v. 2.79- 2012.04.04 - changed ver alias (displays also .pgm-boundle-version file version),
# v. 2.78- 2012.03.30 - changed unwrap alias
# v. 2.77- 2012.03.26 - changed pmon alias
# v. 2.76- 2012.03.19 - adjustments to HP-UX env. (changed dip alias, and detection of IP),profile_location_dir
#                       should be now set automatically on different hosts but the detection of it was changed
# v. 2.75- 2011.11.17 - bugfix for lsnrs alias
# v. 2.74- 2011.11.16 - added lsnrs alias
# v. 2.73- 2011.11.16 - modified dbs alias ==> ls -l added at the end
#                       added tns alias - goes to ORACLE_HOME/network/admin and does ls -l
# v. 2.72- 2011.10.27 - modified screen alias (-ln) for NOT logging activity in utmp file (e.g. for last command)
#                       profile_location_dir should be now set automatically on different hosts
# v. 2.70- 2011.10.11 - added wia alias ("where is alert"), talert and valert are fixed as well
#                       new aliases ta=talert, va=valert, var (shows ORACLE env variables)
#                       dssh (sets DISPLAY to :10), dip (sets DISPLAY to source_ip:0)
# v. 2.69- 2011.06.08 - added -p -v switches to asmcmd
# v. 2.68- 2011.05.25 - added lsnr alias
# v. 2.67- 2011.05.10 - added valert and talert aliases
# v. 2.66- 2011.05.04 - added asm alias, changes from v. 2.65 to dba were reverted
# v. 2.65- 2011.05.03 - changed dba alias so when ORACLE_SID is from +ASM instance it connects
#                       as sysasm not as sysdba
# v. 2.64- 2011.03.31 - added dgmgrl alias
# v. 2.63- 2011.03.30 - moved comment about rlwrap colors from bash_profile to this file
#                       changed colors of oracle tools
# v. 2.62- 2011.01.21 - added asmcmd alias and changed the color of the sql prompt in SQL*Plus
# v. 2.61- 2011.01.21 - added adrci alias
# v. 2.6 - 2011.01.20 - added po alias
# v. 2.5 - 2011.01.17 - added pmon alias
# v. 2.5 - 2011.01.14 - history -a added to PROMPT_COMMAND
#                       added: shopt -s cdspell, export IGNOREEOF=1
# v. 2.4 - 2010.04.07 - expdp & impdp with rlwrap are added
# v. 2.3 - 2010.03.31 - profile_location_dir is added to bashrc as well
# v. 2.2 - 2010.03.30 - sqlplus is now rlwrap'ed (rlsqlplus alias)
# v. 2.1 - 2009.08.11 - another small bug fixed
# v. 2.0 - 2009.08.11 - when there was no DNS server around creating PS1 took ~30 secs. Now it should be immediate.
# v. 1.9 - 2009.01.05 - current dir is now max 60 chars, new alias prstat, paul alias changed (mkdir statement)
# v. 1.8 - 2008.12.01 - now full current directory is printed along with the date
# v. 1.7 - 2008.11.20 - changed paul alias
# v. 1.6 - 2008.10.13 - added env alias
# v. 1.5 - 2008.07.14 - added hg alias - use with !NNN where NNN is the outpt from hg alias
# v. 1.4 - 2008.04.16 - changed host && directory colors,added unwrap alias
# v. 1.3 - 2008.04.10 - changed paul alias
# v. 1.2 - 2008.04.09 - pwdmaxlen increased from 25 ==> 35, $HOME is NO longer replaced with ~
# v. 1.1 - 2008.04.07 - added 'ver' alias
# v. 1.0 - 2008.04.02
#

# Ansi color codes for rlwrap prompt and for bash prompt
# 0             reset; clears all colors and styles (to white on black)
# 1             bold on (see below)
# 3             italics on
# 4             underline on
# 7             inverse on; reverses foreground & background colors
# 9             strikethrough on
# 22    bold off
# 23    italics off
# 24    underline off
# 27    inverse off
# 29    strikethrough off
# 30    set foreground color to black
# 31    set foreground color to red
# 32    set foreground color to green
# 33    set foreground color to yellow
# 34    set foreground color to blue
# 35    set foreground color to magenta (purple)
# 36    set foreground color to cyan
# 37    set foreground color to white
# 39    set foreground color to default (white)
# 40    set background color to black
# 41    set background color to red
# 42    set background color to green
# 43    set background color to yellow
# 44    set background color to blue
# 45    set background color to magenta (purple)
# 46    set background color to cyan
# 47    set background color to white
# 49    set background color to default (black)

#####################################
# settig profile_location_dir START #
#####################################
export profile_location_dir=/root
JPMORGAN=0
MATUSZYK=0
KGP=0
UBS=0
SOCGEN=0

cat /etc/hosts|grep -qi jpmchase                                   && JPMORGAN=1
[ -f /root/bin/smart-indicators.sh ]                               && MATUSZYK=1
cat /etc/hosts|grep -qi 'gov.pl'                                   && KGP=1
cat /etc/chrony.conf /etc/resolv.conf 2>/dev/null |grep -qi ubs    && UBS=1
cat /etc/chrony.conf /etc/resolv.conf 2>/dev/null |grep -qi socgen && SOCGEN=1

if [ $SOCGEN == 1 ]; then
  export MRL_PUTTY_PS1=     # unset MRL_PUTTY_PS1 as it corrupts terminal colors...
  # below is  making TMOUT which is may be set read-only to read-write
  [ $(type -fP gdb) ] && gdb -ex 'call (int) unbind_variable("TMOUT")' --pid=$$ --batch 2>&1 > /dev/null
  export TMOUT=0            # to disable auto-logout set the TMOUT to zero or unset it 
  export profile_location_dir=$HOME/pgm
fi

if [ $KGP == 1 ]; then
  if [ "$USER" == "root" ]; then
    export profile_location_dir=/root/pgm
  else
    export profile_location_dir=$HOME/pgm
  fi
fi

if [ $MATUSZYK == 1 ]; then
  if [ "$USER" == "root" ]; then
    export profile_location_dir=/root
  else
    export profile_location_dir=$HOME
  fi
fi

if [ $JPMORGAN == 1 ]; then
  alias global="cd /orcl/app/oracle/admin"
  if [ "$USER" == "oracle" ]; then
    export profile_location_dir=/export/home/r062068
  else
    export profile_location_dir=$HOME
  fi
fi          

if [ $UBS == 1 ]; then
  export PBSETUTMP=no
  export PBREMEX=yes
fi
#####################################
# settig profile_location_dir END   #
#####################################

alias pgm='if [ -d $HOME/pgm ]; then cd $HOME/pgm; ls -l ; echo ; else mkdir ${profile_location_dir} 2>/dev/null;cd ${profile_location_dir}; ls -l ; fi'

if [[ "$USER" =~ (.*grid|grid.*|.*ora|ora*.) ]]; then
  export NLS_DATE_FORMAT='yyyy.mm.dd hh24:mi:ss'

  function lsnrs() {
   if [ "$1" == "" ]; then echo "ERROR dude - specify listener name or part of it"
   else
     for p in `lsnr | sed 's/^.*tnslsnr //g'|awk '{print $1}'|grep -v '//g'|grep -i $1`; do
       org_ORACLE_HOME=$ORACLE_HOME
       org_PATH="$PATH"
       export ORACLE_HOME=`lsnr|grep $p | sed 's/tnslsnr .*/tnslsnr /g' |sed 's/^.* \//\//g'|grep -v sed|sed 's/\/bin\/tnslsnr //g'`
       echo $ORACLE_HOME
       PATH=$ORACLE_HOME/bin
       $ORACLE_HOME/bin/lsnrctl services $p;
       export ORACLE_HOME=$org_ORACLE_HOME
       export PATH=$org_PATH
       export org_ORACLE_HOME=
       export org_PATH=
     done
   fi;
  }
  export -f lsnrs

  alias valert="if [ \""\$ORACLE_SID\"" == \"\" ]; then echo \"ORACLE_SID is not set\";else adrci exec=\"set base \$ORACLE_BASE;set homepath \`adrci exec=\"set base \$ORACLE_BASE;show homes\"|egrep \"rdbms|asm\"|grep -i \$ORACLE_SID\`;show alert\";fi"
  alias talert="if [ \""\$ORACLE_SID\"" == \"\" ]; then echo \"ORACLE_SID is not set\";else adrci exec=\"set base \$ORACLE_BASE;set homepath \`adrci exec=\"set base \$ORACLE_BASE;show homes\"|egrep \"rdbms|asm\"|grep -i \"/\$ORACLE_SID\$\"\`;show alert -tail 500 -f\";fi"
  alias va="valert"
  alias ta="talert"
  alias tha='if [ -e "$HOME/pgm/alert_${ORACLE_SID}.log" ]; then tail -n 1000 -f "$HOME/pgm/alert_${ORACLE_SID}.log";else echo file $HOME/pgm/alert_${ORACLE_SID}.log does not exist;fi'   # abbreviation from 'tail home alert'
  alias cha='if [ -e "$HOME/pgm/alert_${ORACLE_SID}.log" ]; then tail -n 1000 "$HOME/pgm/alert_${ORACLE_SID}.log" | less +G;else echo file $HOME/pgm/alert_${ORACLE_SID}.log does not exist;fi'   # abbreviateion from 'cat home alert'

  # to find the names of the defined function use:
  # declare -F      - summary
  # declare -f      - all functions with definition
  # declare -F dba  - show definition of dba function
  function dba() {
      if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
      if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
      if [ ! -f "$ORACLE_HOME/bin/sqlplus" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
      if [ `uname -a|grep -i Linux|wc -l` -eq 1 ]; then
         printf '\e[8;71;175t'
      fi
      if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
            "${profile_location_dir}/bin/rlwrap" -p"1;34" -c -f "${profile_location_dir}/bin/wynik.txt" -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/sqlplus" "/ as sysdba" $*
      else
        "$ORACLE_HOME/bin/sqlplus" "/ as sysdba" $*
      fi
      }
  
  function asm() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/sqlplus" ] ; then echo "$ORACLE_HOME/bin/sqlplus" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    # let's try resize the terminal to 175x71 on linux systems (so login.sql will be seen nicely)
    if [ `uname -a|grep -i Linux|wc -l` -eq 1 ]; then
       printf '\e[8;71;181t'
    fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
          "${profile_location_dir}/bin/rlwrap" -p"1;34" -c -f "${profile_location_dir}/bin/wynik.txt" -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/sqlplus" "/ as sysasm" $*
    else
      "$ORACLE_HOME/bin/sqlplus" "/ as sysasm" $*
    fi
    }
  export -f asm

  function impdp() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;37" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }
  export -f impdp

  function expdp() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;37" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }
  export -f expdp

  function adrci() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;36" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }
  export -f adrci

  function asmcmd() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    declare -a ARGS;
    for var in "$@";
    do
        if [ "$var" = '-p' ]; then
            continue;
        fi;
        ARGS[${#ARGS[@]}]="$var";
    done;
    export ORG_ORACLE_PATH=$ORACLE_PATH
    export ORACLE_PATH=    # we unset this as if we run e.g. asmcmd shutdown it will run login.sql file, which is not nice ...
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;35" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" -p ${ARGS[*]}
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" -p ${ARGS[*]}
    fi
    export ORACLE_PATH=$ORG_ORACLE_PATH
    export ORG_ORACLE_PATH=
    }
  export -f asmcmd

  function dgmgrl() {
    if [   -z "$ORACLE_HOME" ] ; then echo "ORACLE_HOME is not set, exiting ...";echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo "ORACLE_HOME does NOT exist, exiting  ...";echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;35" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }
  export -f dgmgrl

  # 'where is alert'
  function wia () {
    if [ "$ORACLE_SID" == "" ];then
      echo "ORACLE_SID is not set"
    else
      echo $(/bin/ls -1t $(locate alert_${ORACLE_SID}|egrep "/alert.${ORACLE_SID}.log$")|head -1)
    fi 
    }
  export -f wia

  alias  oh='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ]; then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_HOME ; pwd ; echo ; fi'
  alias soh='echo;echo ORACLE_HOME = $ORACLE_HOME ; echo '
  alias  ob='if [ -z "$ORACLE_BASE" ] || [ ! -d "$ORACLE_BASE" ]; then echo ORACLE_BASE not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_BASE ; pwd ; echo ; fi'
  alias sob='echo;echo ORACLE_BASE = $ORACLE_BASE ; echo'
  alias dbs='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ]; then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_HOME/dbs ; pwd ; ls -l ; echo ; fi'
  alias tns='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ]; then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd ${TNS_ADMIN:-$ORACLE_HOME/network/admin} ; pwd ; ls -l ; echo ; fi'
  alias po='. pickora $*'
  alias var='env|egrep "ORA|TNS_ADMIN|SQLPATH|NLS_|TWO_TASK"|sort'
  alias dgsp='echo show database verbose `echo show configuration|dgmgrl -silent / | grep "Primary database" | sed "s/ - Primary database//"` |dgmgrl -silent /|less'
  alias dgss='echo show database verbose `echo show configuration|dgmgrl -silent / | grep "standby database" | sed "s/ - Physical standby database//"` |dgmgrl -silent /|less'
  alias dgsc='echo show configuration |dgmgrl -silent /'
  alias dgscv='echo show configuration verbose|dgmgrl -silent /'
  alias dgscl='echo show configuration lag|dgmgrl -silent /'

  function help-oracle() {
    echo
    echo "~~~ Data Guard ~~~"
    echo "dgsc  - DG show configuration"
    echo "dgscv - DG show configuration verbose"
    echo "dgscl - DG show confiuration lag"
    echo "dgsp  - DG show Primary DB"
    echo "dgss  - DG show Standby database"
    echo ; echo "~~~ alert.log ~~~"
    echo "ta, talert - tail alert.log"
    echo "va, valert - vi alert.log"
    echo ; echo "~~~ listeners ~~~"
    echo "lsnr  - show running listeners"
    echo "lsnrh - show running listeners from the CURRENTLY set ORACLE_HOME"
    echo ; echo "~~~ ORACLE_HOME and ORACLE_BASE ~~~"
    echo "ob  - go to ORACLE_BASE and show the ORACLE_BASE value"
    echo "oh  - go to ORACLE_HOME and show the ORACLE_HOME value"
    echo "soh - show ORACLE_HOME value"
    echo "sob - show ORACLE_BASE value"
    echo ; echo "~~~ other stuff ~~~"
    echo "pmon - show what instances are currently running"
    echo "po - pickora - choose which instance environment variables you want to set"
    echo "var - show ORACLE specific environment variables"
    echo
    }
  export -f help-oracle

fi    # end of condition: [[ "$USER" =~ (.*grid$|^grid.*|.*ora$|^ora*.) ]]

function hg() { if [ $# -gt 0 ]; then (history | grep -i $* ) ; else history ;fi }
export -f hg

if [ $(type -fP prstat) ];then
  alias prstat='prstat 1 '
fi

function env(){
  echo ; echo "---- (PGM) env is a function ----" ; echo 
  $(type -fP env) | sed '/BASH_FUNC_/,/^}$/d' | sed '/^$/d'|sort|uniq # get rid of function and display ony environment variables
  echo
  }
export -f env

function htop() {
  $(type -tPf htop) --version >/dev/null 2>&1 || ( echo "(PGM) htop is not installed :-(" ; exit 1 )
  $(type -Pf htop) --help | grep -q -- "--no-color" >/dev/null 2>&1 
  if (( $? > 0 ));then
    $(type -Pf htop) $*
  else
    $(type -Pf htop) --no-color $*
  fi
  }
export -f htop

function df(){
  echo ; echo "---- (PGM) df is a function ----" 
  ## all arguments starting with '-' we treat and df switches
  df_args=""
  ## all arguments starting with NO '-' we pass to grep
  file_dir_spec=""
  while [[ $# -gt 0 ]]; do
    case $1 in
      -*|--*) 
        df_args="$df_args $1"
        shift
        ;;
      *) 
        if [[ -z "$file_dir_spec" ]];then
          if [[ ${#1} > 1 ]];then 
            file_dir_spec="${1%/}" 
          else
            file_dir_spec="${1}"
          fi
        else # if we have already something in file_dir_spec we append to it with "|"
          if [[ ${#1} > 1 ]];then # when the pattern ends with / we remove it unless the pattern contains only '/'
            file_dir_spec="$file_dir_spec|${1%/}"
          else
            file_dir_spec="$file_dir_spec|${1}"
          fi
        fi
        shift
        ;;
    esac
  done
  if [[ "$file_dir_spec" == "" ]];then
    message=$(/bin/df -P --total --print-type ${df_args} 2>&1) # check if invalid args are passed to df
    if [[ $message =~ "invalid option" ]]; then
      echo "$message"
      return 1
    fi
    export longest_line=$(/bin/df -P --total --print-type ${df_args} \
      | awk '{ print length}' | sort -n | tail -1)
    /bin/df -P --total --print-type ${df_args} \
      | sed "/total/i $(for ((i=0;i<$longest_line;i++));do printf '%.0s-';done)" \
      | sed "/^Filesystem/a $(for ((i=0;i<$longest_line;i++));do printf '%.0s-';done)"
  else
    message=$(//bin/df -P --total --print-type ${df_args} "${file_dir_spec}" 2>&1)  # check if invalid args are passed to df
    exit_code=$?
    if [[ $message =~ "invalid option" ]]; then
      echo "$message"
      return 1
    fi
    if (( exit_code == 0 )); then
      export longest_line=$(/bin/df -P --total --print-type ${df_args} "${file_dir_spec}" | \
        awk '{ print length}' | sort -n | tail -1)
      /bin/df -P  --total --print-type ${df_args} "${file_dir_spec}" | \
        sed "/total/i $(for ((i=0;i<$longest_line;i++));do printf '%.0s-';done)" | \
        sed "/^Filesystem/a $(for ((i=0;i<$longest_line;i++));do printf '%.0s-';done)"
    else
      export longest_line=$(/bin/df -P --total --print-type ${df_args} | \
        egrep -i "${file_dir_spec}|^Filesystem" | awk '{ print length}' | sort -n | tail -1)
      /bin/df -P --total --print-type ${df_args} | egrep -i "${file_dir_spec}|^Filesystem" | \
        sed "/^Filesystem/a $(for ((i=0;i<$longest_line;i++));do printf '%.0s-';done)"
    fi
  fi
  echo
  }
export -f df

function dfh() {
  df -h $*
  }
export -f dfh

function dfm() {
  df -m $*
  }
export -f dfm

function dfs() {
  df --sync $*
  }
export -f dfs

function dsl() {
  ds --one-file-system *
  }
export -f dsl

function help-disk() {
  echo
  echo "/***********************/"
  echo "/*      du | sort      */"
  echo "/***********************/"
  echo "ds     - DiskSort (human way)"
  echo "dsl    - 'ds' but for the local file system only"
  echo
  echo "/***********************/"
  echo "/*      df | grep      */"
  echo "/***********************/"
  echo "df     - DiskFree"
  echo "dfs    - 'df' with --sync option"
  echo "dfh    - 'df' with -h    option (--human-readable)"
  echo "dfm    - 'df' with -m    option"
  echo
  }
export -f help-disk

function screen() {
  if [ -f "$profile_location_dir/.screenrc" ]; then
    "$(type -fP screen)" -c "$profile_location_dir/.screenrc" -ln -h 599999 -T xterm $*
  else
    "$(type -fP screen)" -ln -h 599999 -T xterm $*
  fi
  }
export -f screen

# show disk usage and sorts the output according to the size
function ds () {         
  if [ $# -eq 0 ]; then
    du -hs * | sort -h
  else
    du -hs $* | sort -h
  fi
  }
export ds

function ver() {
  clear;echo '### .pgm-boundle-version ###';
  if [ -f "${profile_location_dir}"/.pgm-boundle-version ];then
    cat "${profile_location_dir}"/.pgm-boundle-version|head -7 
  else
    echo "(PGM) file ${profile_location_dir}/.pgm-boundle-version doesn't exits so I will not cat it here..."
  fi
  echo;echo;
  echo '### BASHRC ###';
  cat ${profile_location_dir}/bashrc|head -7|grep '^#';echo;
  echo '### BASH_PROFILE ###';cat ${profile_location_dir}/bash_profile|head -7|grep '^#'
  }
export ver

alias unwrap='HISTFILE=/dev/null;if [ "$profile_location_dir" == "" ]; then echo "profile_location_dir is not set, exiting..." ;else cd $profile_location_dir;vi a;uudecode a && bzip2 -d profile.tar.bz2 && tar xvf profile.tar && (ls -l bash*; ./test.sh ; ls -l bash*);fi'

# even though pmon and lsnr are Oracle-related aliases but it is very useful to have it even in e.g. root environement
# why? to check if we can shut down / restart the server and if any Oracle instaces / listeners are running
alias pmon="ps -ef|grep pmon|egrep 'ora_pmon|asm_pmon'|grep -v grep|sed 's/.* ..._pmon_//'|grep -v '//'|sort|uniq"
alias lsnr='ps -ef|grep lsnr|grep -v grep'

alias dis='echo your display is set to $DISPLAY'
alias dssh="export DISPLAY=:10;dis"
# alias dip="export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0;if [ "$DISPLAY" == ":0" ]; then DISPLAY=`who am i| awk '{print $5}'| tr -d '()'`:0;fi;dis"

if [ `uname -s` == 'HP-UX' ]; then
   alias dip="export DISPLAY=`who am i -R | awk '{print $6}'| tr -d '()'`:0;dis"
else
   alias dip="export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0;dis"
fi

if [ `uname -s` == 'Linux' ]; then
   alias ls="ls --full-time  --color=none"
fi

alias ll="ls -la "
alias  l="ls -la "
function vi() {
  if [ -f "$profile_location_dir/.vimrc" ]; then
    "$(type -fP vi)" -u "$profile_location_dir/.vimrc" $*
  else
    "$(type -fP vi)" $*
  fi
  }
alias vim='vi $* '

alias help-date="echo ; echo date \'+%Y.%m.%d %H:%M:%S\' ; echo"
alias help-dd="echo ; echo dd bs=50M if= of= status=progress conv=fdatasync  oflag=direct ; echo"
alias help-sshfs="echo ; echo sshfs -o Compression=no -o ServerAliveCountMax=2 -o ServerAliveInterval=15 user@hostname:/directory /mnt/ ; echo"
alias help-rsync="echo ; echo rsync -a -v --inplace --no-compress --stats --progress --info=progress1 --partial --remove-source-files -e \'ssh -T -p 4444 -o Compression=no -x \' SOURCE DEST  ; echo"
alias help-sshfs="echo ; echo sshfs -o Compression=no -o ServerAliveCountMax=2 -o ServerAliveInterval=15 root@hostname:/directory /mnt/sshfs-tmp ; echo"
alias help-vi="echo ; echo 'vi +/{pat} +[num]' ; echo "
function help-boxes() {
  echo ; 
  echo "boxes -l | less                           # list available box designs w/ samples"
  echo "boxes -s WxH -a l/c/r -d ada-box / caml / ada-cmt / shell / simple / stone"
  echo ; 
  if [ ! $(type -tPf boxes) -v >/dev/null 2>&1 ]; then
    echo "(PGM) boxes is not installed so I will not print any samples:-(" 
    return 1
  fi
  for p in ada-box caml ada-cmt shell simple stone; do 
    echo ; echo boxes -a c -d $p | boxes -a c -d $p 2>/dev/null
  done
  echo
  }
export -f help-boxes

function help-find() {
  echo;
  echo 'find PATH -xautofs -xdev -maxdepth 1 \( -name \*trm -o -name \*trc \) -type f -mmin +7 -mtime +5 -size +50M -exec CMD {} \;'
  echo '         -maxdepth 1 - will search only CURRENT catalog'
  echo '         -maxdepth 0 will not search. It will only try to match among the file/directory names that you have provided as arguments in find'
  echo '            find /etc -maxdepth 0 -name passwd # will NOT find the file'
  echo '            find /etc -maxdepth 1 -name passwd # will     find the file'
  echo
  }
export -f help-find

function help-kitty(){
  # trick with $ at the beginning - "ksh, bash, and zsh only, does not expand variables"
  echo $'sudo su - oracle --session-command=\'/bin/bash --login --rcfile /tools/oracle/pgm/bashrc /tools/oracle/pgm/bash_profile\''
  }
export -f help-kitty

if [ $MATUSZYK == 1 ]; then
  # github aliases
  alias gitpd="${profile_location_dir}/github-bash_profile/git-pull.sh"
  alias gitpdb="${profile_location_dir}/github-bash_profile/git-pull.sh batch"
  alias gitpu="${profile_location_dir}/github-bash_profile/git-push.sh"
  alias gitpub="${profile_location_dir}/github-bash_profile/git-push.sh batch"
  alias gitbd="${profile_location_dir}/github-bin/git-pull.sh"
  alias gitbdb="${profile_location_dir}/github-bin/git-pull.sh batch"
  alias gitbu="${profile_location_dir}/github-bin/git-push.sh"
  alias gitbub="${profile_location_dir}/github-bin/git-push.sh batch"
fi

function aptitude-all() {
  assume_yes=""
  if (( $# != 0 )) && [ "${1-nonbatch}" == "batch" ]; then
    echo ; echo "(PGM) enabling batch mode (no questions asked)"
    assume_yes="-y"
  fi

  boxes <<< "aptitude -q ${assume_yes} update";
  aptitude -q ${assume_yes} update;     
  
  boxes <<< "aptitude -q ${assume_yes} upgrade";
  aptitude -q ${assume_yes} upgrade;  
  
  boxes <<< "aptitude -q ${assume_yes} autoclean";
  aptitude -q ${assume_yes} autoclean ;
  
  if [ -x $HOME/bin/sprawdz-ile-apt-list--upgradable.sh ]; then 
    $HOME/bin/sprawdz-ile-apt-list--upgradable.sh
  fi
  }
if [ ! $(type -fP aptitude) ];then
  unset -f aptitude-all
else
  export -f aptitude-all
fi

boldon="`tty -s && /usr/bin/tput smso`"
boldoff="`tty -s && /usr/bin/tput rmso`"
shopt -s histappend                 # Make Bash append rather than overwrite the history on disk
shopt -s cdspell                        #Bash will cope with each component of the typed path having one
                                    # missing character, one extra character, or a pair of characters
                                    # transposed:

export IGNOREEOF=1                      # Ctrl+D conveniently exits Bash
                                    # Sometimes too conveniently
                                    # Specify that it must be pressed twice to exit:

##################################################
# Fancy PWD display function
##################################################
# PGM - this was commented out - The home directory (HOME) is replaced with a ~
# The last pwdmaxlen characters of the PWD are displayed
# Leading partial directory names are striped off
# PGM - this is commented out in the code /home/me/stuff          -> ~/stuff               if USER=me
# /usr/share/big_dir_name -> ../share/big_dir_name if pwdmaxlen=20
##################################################
bash_prompt_command() {
    # How many characters of the $PWD should be kept
    local pwdmaxlen=60
    # Indicate that there has been dir truncation
    local trunc_symbol=".."
    local dir=${PWD##*/}
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
    # uncomment if you want to replace $HOME with ~
    # NEW_PWD=${PWD/#$HOME/~}
    NEW_PWD=${PWD}
    local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]; then
      NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
      NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
    fi

    local NONE='\[\033[0m\]'    # unsets color to term's fg color

    # regular colors
    local K='\[\033[0;30m\]'    # black
    local R='\[\033[0;31m\]'    # red
    local G='\[\033[0;32m\]'    # green
    local Y='\[\033[0;33m\]'    # yellow
    local B='\[\033[0;34m\]'    # blue
    local M='\[\033[0;35m\]'    # magenta
    local C='\[\033[0;36m\]'    # cyan
    local W='\[\033[0;37m\]'    # white

    # empahsized (bolded) colors
    local EMK='\[\033[1;30m\]'
    local EMR='\[\033[1;31m\]'
    local EMG='\[\033[1;32m\]'
    local EMY='\[\033[1;33m\]'
    local EMB='\[\033[1;34m\]'
    local EMM='\[\033[1;35m\]'
    local EMC='\[\033[1;36m\]'
    local EMW='\[\033[1;37m\]'

    # background colors
    local BGK='\[\033[40m\]'
    local BGR='\[\033[41m\]'
    local BGG='\[\033[42m\]'
    local BGY='\[\033[43m\]'
    local BGB='\[\033[44m\]'
    local BGM='\[\033[45m\]'
    local BGC='\[\033[46m\]'
    local BGW='\[\033[47m\]'
    local UC=$C                 # user's color
    [ $UID -eq "0" ] && UC=$R   # root's color

    #if [ -z $ORACLE_SID ]
    if [ $ORACLE_SID ]; then
      PS1="${B}${BGY}${ORACLE_SID}${EMK}${BGK}${UC}"
    else
      PS1=""
    fi

    SCREEN_RUNNING=""
    if [ $WINDOW ]; then
      SCREEN_RUNNING="SCREEN-$WINDOW"
      PS1="${PS1} ${B}${BGR}${SCREEN_RUNNING}${EMK}${BGK}${UC} "
    fi

    # firstly let's check if hostname gives us FQDN
    if [ ! `hostname|grep '\.' > /dev/null` ]; then
      # hostname gives us FQDN
      host=`hostname`
    elif [ ! `cat /etc/resolv.conf |grep search|awk '{print $2}'` ]; then
      host=`hostname`.`cat /etc/resolv.conf |grep search|awk '{print $2}'`
    else
      host=`hostname`
    fi
    export PS1="`date '+%Y.%m.%d %H:%M:%S'` [ \u${W}@${C}`echo $host`:${W}${EMC}`pwd` ] ${EMK}\n${PS1} \\$ ${NONE}"
    if [ $ORACLE_SID ]; then
      echo -ne "\033]0; ORACLE_SID = \"${ORACLE_SID}\" ${LOGNAME}@`echo $host` `pwd`\007"
    else
      echo -ne "\033]0; ${LOGNAME}@`echo $host` `pwd`\007"
    fi
    history -a                          # Whenever displaying the prompt, write the previous line to disk
}
export -f bash_prompt_command   # In Bash you can export function definitions to other shell scripts that your script calls
export PROMPT_COMMAND=bash_prompt_command

export -f hg
export -f df
export -f screen
export -f ds
export -f ver
export -f vi

export -f df
export -f dfs
export -f dsl

# After each command, append to the history file and reread it
#PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}"

export LC_TIME=en_GB  # by date pokazywal 24h czas

export LC_MESSAGES=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LANG=en_US.utf8           # by pass i mc sie ladnie wyswietlaly
export LANGUAGE=en_US:en
export LC_CTYPE=en_US.UTF-8

if (( `cat /proc/cpuinfo |grep -i Raspberry |wc -l` != 0 )); then
#  echo "bashrc: platforma Raspberry" 
  if [ ! `mountpoint -q /encrypted` ];then
    mkdir -p /encrypted/$USER/XDG_DATA_HOME
    export XDG_DATA_HOME=/encrypted/$USER/XDG_DATA_HOME
  else
    echo "bashrc: /encrypted nie jest zamontowany - BLAD"
  fi 
fi

if [[ $- == *i* ]]; then
    bind 'set enable-bracketed-paste off'
fi

