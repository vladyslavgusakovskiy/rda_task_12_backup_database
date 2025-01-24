#! /bin/bash

DB_USER="backup"
DB_PASSWORD="1111"
DB_NAME="ShopDB"

mysqldump -u $DB_USER -p $DB_PASSWORD --databases $DB_NAME  --result-file=shopdb_backup.sql
mysqldump -u $DB_USER -p $DB_PASSWORD --databases $DB_NAME --no-create-info  --result-file=shopdb_data_backup.sql

mysql -u $DB_USER -p$DB_PASSWORD ShopDBReserve < shopdb_backup.sql
mysql -u $DB_USER -p$DB_PASSWORD ShopDBDevelopment < shopdb_data_backup.sql
