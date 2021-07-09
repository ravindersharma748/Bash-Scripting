#!/usr/bin/env bash

DIR=/var/log/httpd
cd $DIR
for file in $(ls $DIR)

do

cp ${file} ${file}_bkp

done
