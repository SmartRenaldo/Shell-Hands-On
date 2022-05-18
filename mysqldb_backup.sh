#!/bin/bash
#backup dir
BACKUP=/data/backup/db
#current time
DATETIME=$(date +%Y-%m-%d_%H%M%S)
echo $DATETIME
#database address
HOST=localhost
#database username
DB_USER=root
#database password
DB_PW=root
#database name
DATABASE=awesome

#create backup category
[ ! -d "${BACKUP}/${DATETIME}" ] && mkdir -p "${BACKUP}/${DATETIME}"

#backup database
mysqldump -u${DB_USER} -p${DB_PW} --host=${HOST} -q -R --databases ${DATABASE} | gzip > ${BACKUP}/${DATETIME}/$DATETIME.sql.gz

#convert file to tar.gz
cd ${BACKUP}
tar -zcvf $DATETIME.tar.gz ${DATETIME}
rm -rf ${BACKUP}/${DATETIME}

#delete backup 10-days before
find ${BACKUP} -atime +10 -name "*.tar.gz" -exec rm -rf {} \;
echo "backup ${DATABASE} successful!"
