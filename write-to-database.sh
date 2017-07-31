#!/bin/bash
# Set Variables
# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=changethis
# Set database and table names
MYDATABASE=Survey
MYTABLE=Questions
# Place data in the MySQL secure database
sudo cp ./tmp.csv /var/lib/mysql-files/
echo "Data copied to secure directory"
# Check if database exists, and if not, then create it
echo "Checking for database"
DBCHECK=`mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e"Show Databases;" | grep -Fo $MYDATABASE`
if [ "$DBCHECK" == "$MYDATABASE" ]; then 
echo "Database Exists"
else
echo "Database does not exist. Creating database now."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"
fi
# Check if table exists, and if not, then create it 
echo "Checking for table"
DBCHECK=`mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "Show tables;" $MYDATABASE | grep -Fo $MYTABLE`
if [ "$DBCHECK" == "$MYTABLE" ]; then 
echo "Table Exists"
else
echo "Table does not exist. Creating table now."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (Hometown VARCHAR(255), Genre VARCHAR(255), Weather VARCHAR(255), Animals VARCHAR(255), Flower VARCHAR(255)), (ALTER TABLE $MYTABLE ADD PRIMARY KEY (Hometown));" $MYDATABASE
fi
# Write data from tmp.csv to database table
echo "Writing information to $MYTABLE in $MYDATABASE"
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "LOAD DATA INFILE '/var/lib/mysql-files/tmp.csv' INTO TABLE $MYTABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';" $MYDATABASE
echo "Data written successfully"
# Dump current version of database into export file
echo "Survey data dumped to `date --iso-8601=seconds`-$MYDATABASE.sql"
# Remove /var/lib/mysql-files/tmp.csv
sudo rm /var/lib/mysql-files/tmp.csv