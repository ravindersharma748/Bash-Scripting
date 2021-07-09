#!/bin/bash

FILE=/var/log/httpd/access.log

echo -e "  Log    \t Count"
echo -e "----------------------"

#for log in `cat ${FILE}`

#do
get_requests=$(cat ${FILE} | grep "GET" | wc -l)
echo -e " access_log    \t ${get_requests}"
#done
