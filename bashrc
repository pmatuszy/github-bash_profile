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
export profile_location_dir=/home/oracle/pgm
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

alias pgm='if [ -d $HOME/pgm ];then cd $HOME/pgm; ls -l ; echo ; else mkdir ${profile_location_dir} 2>/dev/null;cd ${profile_location_dir}; ls -l ; fi'

if [ "$USER" != "root" ]; then

  function lsnrs() {
   if [ "$1" == "" ];then echo "ERROR dude - specify listener name or part of it"
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

  alias valert="if [ \""\$ORACLE_SID\"" == \"\" ];then echo \"ORACLE_SID is not set\";else adrci exec=\"set base \$ORACLE_BASE;set homepath \`adrci exec=\"set base \$ORACLE_BASE;show homes\"|egrep \"rdbms|asm\"|grep -i \$ORACLE_SID\`;show alert\";fi"
  alias talert="if [ \""\$ORACLE_SID\"" == \"\" ];then echo \"ORACLE_SID is not set\";else adrci exec=\"set base \$ORACLE_BASE;set homepath \`adrci exec=\"set base \$ORACLE_BASE;show homes\"|egrep \"rdbms|asm\"|grep -i \"/\$ORACLE_SID\$\"\`;show alert -tail 500 -f\";fi"
  alias va="valert"
  alias ta="talert"
  alias tha='if [ -e "$HOME/pgm/alert_${ORACLE_SID}.log" ];then tail -n 1000 -f "$HOME/pgm/alert_${ORACLE_SID}.log";else echo file $HOME/pgm/alert_${ORACLE_SID}.log does not exist;fi'   # abbreviation from 'tail home alert'
  alias cha='if [ -e "$HOME/pgm/alert_${ORACLE_SID}.log" ];then tail -n 1000 "$HOME/pgm/alert_${ORACLE_SID}.log" | less +G;else echo file $HOME/pgm/alert_${ORACLE_SID}.log does not exist;fi'   # abbreviateion from 'cat home alert'

  # to find the names of the defined function use:
  # declare -F      - summary
  # declare -f      - all functions with definition
  # declare -F dba  - show definition of dba function
  function dba() {
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
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
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
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

  function impdp() {
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;37" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }

  function adrci() {
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;36" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }

  function asmcmd() {
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
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

  function dgmgrl() {
    if [   -z "$ORACLE_HOME" ] ; then echo ORACLE_HOME not set exiting ...;echo;echo; return 1 ; fi
    if [ ! -d "$ORACLE_HOME" ] ; then echo ORACLE_HOME does NOT exit   ...;echo;echo; return 2 ; fi
    if [ ! -f "$ORACLE_HOME/bin/${FUNCNAME[0]}" ] ; then echo "$ORACLE_HOME/bin/${FUNCNAME[0]}" does NOT exist, exiting ...;echo;echo; return 3 ; fi
    if [ -f "${profile_location_dir}/bin/rlwrap" ]; then
      "${profile_location_dir}/bin/rlwrap" -p"7;35" -c -r -b "(){}[],+^='@$" "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    else
      "$ORACLE_HOME/bin/${FUNCNAME[0]}" $*
    fi
    }

  alias wia="if [ \""\$ORACLE_SID\"" == \"\" ];then echo \"ORACLE_SID is not set\";else echo \`ls -1t \\\`locate alert_\${ORACLE_SID}|egrep \"/alert.\${ORACLE_SID}.log$\"\\\`|head -1\`; fi"

  alias  oh='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ] ;then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_HOME ; pwd ; echo ; fi'
  alias soh='echo;echo ORACLE_HOME = $ORACLE_HOME ; echo '
  alias  ob='if [ -z "$ORACLE_BASE" ] || [ ! -d "$ORACLE_BASE" ] ;then echo ORACLE_BASE not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_BASE ; pwd ; echo ; fi'
  alias sob='echo;echo ORACLE_BASE = $ORACLE_BASE ; echo'
  alias dbs='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ];then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd $ORACLE_HOME/dbs ; pwd ; ls -l ; echo ; fi'
  alias tns='if [ -z "$ORACLE_HOME" ] || [ ! -d "$ORACLE_HOME" ];then echo ORACLE_HOME not set or non-existent, exiting ...;echo;echo;else cd ${TNS_ADMIN:-$ORACLE_HOME/network/admin} ; pwd ; ls -l ; echo ; fi'
  alias po='. pickora $*'
  alias var='env|egrep "ORA|TNS_ADMIN_NLS|SQLPATH|NLS_|TWO_TASK"|sort'
  alias dgsp='echo show database verbose `echo show configuration|dgmgrl -silent / | grep "Primary database" | sed "s/ - Primary database//"` |dgmgrl -silent /|less'
  alias dgss='echo show database verbose `echo show configuration|dgmgrl -silent / | grep "standby database" | sed "s/ - Physical standby database//"` |dgmgrl -silent /|less'
  alias dgsc='echo show configuration |dgmgrl -silent /'
  alias dgscv='echo show configuration verbose|dgmgrl -silent /'
  alias dgscl='echo show configuration lag|dgmgrl -silent /'

fi    # end of condition: [ "$USER" != "root" ]

function hg() { if [ $# -gt 0 ]; then (history | grep -i $* ) ; else history ;fi }
alias env="env | sort"
alias prstat='prstat 1'
alias screen='screen -ln -h 99999 -T xterm'
alias ver='clear;echo '\''### .pgm-boundle-version ###'\'';cat ${profile_location_dir}/.pgm-boundle-version|head -7;echo;echo; echo '\''### BASHRC ###'\'';cat ${profile_location_dir}/bashrc|head -7|grep '\''^#'\'';echo;echo '\''### BASH_PROFILE ###'\'';cat ${profile_location_dir}/bash_profile|head -7|grep '\''^#'\'''
alias unwrap='HISTFILE=/dev/null;if [ "$profile_location_dir" == "" ];then echo "profile_location_dir is not set, exiting..." ;else cd $profile_location_dir;vi a;uudecode a && bzip2 -d profile.tar.bz2 && tar xvf profile.tar && (ls -l bash*; ./test.sh ; ls -l bash*);fi'

# even though pmon and lsnr are Oracle-related aliases but it is very useful to have it even in e.g. root environement
# why? to check if we can shut down / restart the server and if any Oracle instaces / listeners are running
alias pmon="ps -ef|grep pmon|egrep 'ora_pmon|asm_pmon'|grep -v grep|sed 's/.* ..._pmon_//'|grep -v '//'|sort|uniq"
alias lsnr='ps -ef|grep lsnr|grep -v grep'

alias dis='echo your display is set to $DISPLAY'
alias dssh="export DISPLAY=:10;dis"
# alias dip="export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0;if [ "$DISPLAY" == ":0" ];then DISPLAY=`who am i| awk '{print $5}'| tr -d '()'`:0;fi;dis"

if [ `uname -s` == 'HP-UX' ];then
   alias dip="export DISPLAY=`who am i -R | awk '{print $6}'| tr -d '()'`:0;dis"
else
   alias dip="export DISPLAY=`who am i| awk '{print $6}'| tr -d '()'`:0;dis"
fi

if [ `uname -s` == 'Linux' ];then
   alias ls="ls --full-time  --color=none"
fi

# JP Morgan - specific settings
alias global="cd /orcl/app/oracle/admin"
alias ll="ls -la "
alias  l="ls -la "

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
    if [ ${pwdoffset} -gt "0" ]
    then
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
    if [ $ORACLE_SID ]
      then
         PS1="${B}${BGY}${ORACLE_SID}${EMK}${BGK}${UC}"
    else
      PS1=""
    fi

    SCREEN_RUNNING=""
    if [ $WINDOW ]
      then
      SCREEN_RUNNING="SCREEN-$WINDOW"
      PS1="${PS1} ${B}${BGR}${SCREEN_RUNNING}${EMK}${BGK}${UC} "
    fi

    # firstly let's check if hostname gives us FQDN
    if [ ! `hostname|grep '\.' > /dev/null` ]
      then
        # hostname gives us FQDN
        host=`hostname`
    elif [ ! `cat /etc/resolv.conf |grep search|awk '{print $2}'` ]; then
      host=`hostname`.`cat /etc/resolv.conf |grep search|awk '{print $2}'`
    else
      host=`hostname`
    fi
    export PS1="`date '+%Y.%m.%d %H:%M:%S'` [ \u${W}@${C}`echo $host`:${W}${EMC}`pwd` ] ${EMK}\n${PS1} \\$ ${NONE}"
    if [ $ORACLE_SID ]
      then
        echo -ne "\033]0; ORACLE_SID = \"${ORACLE_SID}\" ${LOGNAME}@`echo $host` `pwd`\007"
    else
        echo -ne "\033]0; ${LOGNAME}@`echo $host` `pwd`\007"
    fi
    history -a                          # Whenever displaying the prompt, write the previous line to disk
}
export PROMPT_COMMAND=bash_prompt_command
export LANG=en_US