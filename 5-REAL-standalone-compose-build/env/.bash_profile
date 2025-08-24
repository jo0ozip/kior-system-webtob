#=============================================================
# COMMON ENV                                         @TmaxSoft
#=============================================================
umask 077
EDITOR=vi
export EDITOR
set -o vi
export PS1="[\$LOGNAME@`hostname`:\$PWD]$ "
#=============================================================
# WebtoB ENV                                         @TmaxSoft
#=============================================================
export WEBTOBDIR=${WEBTOBDIR}
export PATH="${WEBTOBDIR}/bin:${PATH}"
export LD_LIBRARY_PATH="${WEBTOBDIR}/lib:${LD_LIBRARY_PATH}"
#=============================================================
# WebtoB Alias                                       @TmaxSoft
#=============================================================
alias whome='cd ${WEBTOBDIR}'
alias wcfg='cd ${WEBTOBDIR}/config'
alias wbin='cd ${WEBTOBDIR}/bin'
alias wlog='cd ${WEBTOBDIR}/log'
alias pp='ps -ef | grep '
