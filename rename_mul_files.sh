#!/usr/bin/env bash

#### The script will run in same directory
#### Will remove extension .epp
### One liner for i in *.epp; do `mv $i $( echo $i | cut -d. -f1 )`;done
for i in *.epp
do `mv $i $( echo $i | cut -d. -f1 )`
done


#### Convert all jpg to jpeg files
#### for i in *.jpg; do `mv $i "$( echo $i | cut -d. -f1 ).jpeg"`;done
