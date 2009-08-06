#!/bin/sh

LOG_DIR=log

#. ~/.bash_profile

LANG=C; export LANG;
PATH=.:$PATH; export PATH;

BASE_DIR=`dirname $0`
FILENAME=session_wait-`date '+%Y-%m-%d-%H%M%S'`.log

if [ ! -d "${BASE_DIR}/${LOG_DIR}" ] 
then
	mkdir "${BASE_DIR}/${LOG_DIR}"
fi

cd ${BASE_DIR}
session_wait9.sh | sqlplus > ${BASE_DIR}/${LOG_DIR}/${FILENAME} 2>&1

#if [ "${BASE_DIR}/${LOG_DIR}" ]
#then
#	find ${BASE_DIR}/${LOG_DIR} -name 'session_wait*' -mtime +14 -exec rm -f {} \;
#fi

exit
