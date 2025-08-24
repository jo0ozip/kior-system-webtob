#!/bin/bash

source ~/.bash_profile

# SET http.m ##################################################
if [ -z ${HOSTNAME} ]; then export HOSTNAME=`hostname`; fi
sed -i "s/%HOSTNAME%/${HOSTNAME}/g" ${WEBTOBDIR}/config/http.m

if [ -z ${WEBTOBDIR} ]; then export WEBTOBDIR="CHECK WEBTOBDIR"; fi
sed -i "s/%WEBTOBDIR%/${WEBTOBDIR}/g" ${WEBTOBDIR}/config/http.m

if [ -z ${DOCROOT} ]; then export DOCROOT="${WEBTOBDIR}/docs"; fi
sed -i "s/%DOCROOT%/${DOCROOT}/g" ${WEBTOBDIR}/config/http.m

if [ -z ${WEBTOB_LOG_HOME} ]; then export DOCROOT="${WEBTOBDIR}/log"; fi
sed -i "s/%WEBTOB_LOG_HOME%/${WEBTOB_LOG_HOME}/g" ${WEBTOBDIR}/config/http.m



# License Check
if [ -f "${WEBTOBDIR}/license/license.dat_$(hostname)" ]; then
    mv ${WEBTOBDIR}/license/license.dat_$(hostname) ${WEBTOBDIR}/license/license.dat
else
    mv ${WEBTOBDIR}/license/license.dat_tri ${WEBTOBDIR}/license/license.dat
fi

$WEBTOBDIR/bin/wsboot -c $WEBTOBDIR/config/http.m -V
