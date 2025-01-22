#! /bin/bash

DB_USER="backup"
DB_PASSWORD="1111"
DB_NAME="ShopDB"
BACKUP_FILE="shopdb_backup.sql"

mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE
mysql -u $DB_USER -p$DB_PASSWORD "ShopDBReserve" < $BACKUP_FILE

mysqldump -u $DB_USER -p$DB_PASSWORD --no-create-info $DB_NAME > $BACKUP_FILE
mysql -u $DB_USER -p$DB_PASSWORD "ShopDBDevelopment" < $BACKUP_FILE
