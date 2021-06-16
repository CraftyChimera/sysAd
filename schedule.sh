#!/bin/bash
if [ $(grep $(date +%F) ./future.txt | wc -l) -gt 0 ] #check if there is a meeting today.
# This script should be run on startup,so edit the appropriate file to get this run on startup
then
grep $(date +%F) ./future.txt > /home/Jay_Jay/schedule.txt #if there are meetings today,update. else let it be
fi
for i in {1..30}
do
if [ $i -lt 10 ]
then
ln /home/Jay_Jay/schedule.txt /home/sysAd_0$i/ #create hardlinks so that we really only have to care about only one file
ln /home/Jay_Jay/schedule.txt /home/webDev_0$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_0$i/
else
ln /home/Jay_Jay/schedule.txt /home/sysAd_$i/
ln /home/Jay_Jay/schedule.txt /home/webDev_$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_$i/
fi
done
