#!/bin/sh

LANG=C
export LANG
NLS_LANG=American_America.JA16EUC
export NLS_LANG

LOG_DIR=log
BASE_DIR=`dirname $0`
FILENAME=sysstat-`date '+%Y-%m-%d-%H%M%S'`.log

if [ ! -d "${BASE_DIR}/${LOG_DIR}" ] 
then
	mkdir "${BASE_DIR}/${LOG_DIR}"
fi

cd ${BASE_DIR}
./sysstat.sh | sqlplus > ${BASE_DIR}/${LOG_DIR}/${FILENAME} 2>&1

#if [ "${BASE_DIR}/${LOG_DIR}" ]
#then
#	find ${BASE_DIR}/${LOG_DIR} -name 'sysstat*' -mtime +14 -exec rm -f {} \;
#fi

exit
