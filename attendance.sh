d=${1:-2019-09-27}
a=${2:-2021-10-27}  #today is after the last entry in the file. so any random date after last entry will give the same result
y=$(date --date="$a+1 day" +%Y-%m-%d)
while [ "$d" != "$y" ]; do  #loop for iterating through dates
 if [ $(grep $d ./attendance.txt | wc -l) -gt 0 ] #check if there is a meeting on a day. If so,count the number of people who don't appear
 then
 
  for i in {1..9}
   do
   if [ $(grep $d ./attendance.txt | grep webDev_0$i|wc -l) == 0 ] #take note of people who don't appear in attendance. repeat throughout program
   then
   echo -e "webDev_0$i \t $d"
   fi
   if [ $(grep $d ./attendance.txt | grep sysAd_0$i|wc -l) == 0 ]
   then
   echo -e "sysAd_0$i \t $d"
   fi
   if [ $(grep $d ./attendance.txt | grep appDev_0$i|wc -l) == 0 ]
   then
   echo -e "appDev_0$i \t $d"
   fi
   done
     
  for i in {10..30}
   do
   if [ $(grep $d ./attendance.txt | grep webDev_$i|wc -l) == 0 ]
   then
   echo -e "webDev_$i \t $d"
   fi
   if [ $(grep $d ./attendance.txt | grep sysAd_$i|wc -l) == 0 ]
   then
   echo -e "sysAd_$i \t $d"
   fi
   if [ $(grep $d ./attendance.txt | grep appDev_$i|wc -l) == 0 ]
   then
   echo -e "appDev_$i \t $d"
   fi
   done
    
 
 fi 
 
  d=$(date -I --date "$d + 1 day")
  done
