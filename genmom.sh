#!/bin/bash
d=2019-09-27
a=$(date +%F)
y=$(date --date="$a+1 day" +%Y-%m-%d)
while [ "$d" != "$y" ]; do 
 if [ $(grep $d ./attendance.txt | wc -l) -gt 0 ] && [ $(grep $d ./attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+'|wc -l) -gt 0 ]
 then
 #The main idea is to isolate the list of 2nd years using 2nd grep and 
 #find the last element of list and then the first word of the last element,which is the username if there is atleast one 2nd year in meet
  b=$(grep $d ./attendance.txt|grep -e Ad_0 -e Dev_0 -e Ad_10 -e Dev_10|head -1221321321 |tail -1 |grep -Eo '^[^ ]+')
  echo asdasd > /home/$b/${d}_mom.txt
  fi 
  d=$(date --date "$d + 1 day" +%Y-%m-%d)
  done
