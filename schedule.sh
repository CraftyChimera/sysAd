#!/bin/bash
grep $(date +%F) ./future.txt >> /home/Jay_Jay/schedule.txt
for i in {1..30}
do
if [ $i -lt 10 ]
then
ln -v /home/Jay_Jay/schedule.txt /home/sysAd_0$i/
ln -v /home/Jay_Jay/schedule.txt /home/webDev_0$i/
ln -v /home/Jay_Jay/schedule.txt /home/appDev_0$i/
else
ln -v /home/Jay_Jay/schedule.txt /home/sysAd_$i/
ln -v /home/Jay_Jay/schedule.txt /home/webDev_$i/
ln -v /home/Jay_Jay/schedule.txt /home/appDev_$i/
fi
done
