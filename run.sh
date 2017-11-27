#!/bin/sh - 

LOG_FILE=/var/log/svnserve.log

svnserve -d -r /srv/svn --log-file=${LOG_FILE}

tail -f ${LOG_FILE}
