#!/bin/bash
if [ $(grep $(date +%F) /home/drake/Desktop/future.txt | wc -l) -gt 0 ]
then
grep $(date +%F) /home/drake/Desktop/future.txt > /home/Jay_Jay/schedule.txt
fi
for i in {1..30}
do
if [ $i -lt 10 ]
then
ln /home/Jay_Jay/schedule.txt /home/sysAd_0$i/
ln /home/Jay_Jay/schedule.txt /home/webDev_0$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_0$i/
else
ln /home/Jay_Jay/schedule.txt /home/sysAd_$i/
ln /home/Jay_Jay/schedule.txt /home/webDev_$i/
ln /home/Jay_Jay/schedule.txt /home/appDev_$i/
fi
done
