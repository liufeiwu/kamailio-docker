#!/bin/bash

database create
if [ ! -f "/.db_create" ];then
mysql -u root < /kamailio.sql
mysql -u root < /user.sql
echo 'Database create success.' > /.db_create
echo 'Database created.'
fi