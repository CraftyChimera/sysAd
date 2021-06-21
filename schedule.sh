#!/bin/bash
if [ $(grep "@reboot $(readlink -f $0) &" /var/spool/cron/crontabs/Jay_Jay|wc -l) -lt 1 ] #check if there is already an entry in crontab
then

crontab -u Jay_Jay -l > cron_new
echo "@reboot $(readlink -f $0) &" >> cron_new
crontab -u Jay_Jay cron_new
rm cron_new       #add startup at boot condition
echo " " > /home/Jay_Jay/schedule.txt

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

fi


if [ $(grep $(date +%F) ./future.txt | wc -l) -gt 0 ]
then
grep $(date +%F) ./future.txt > /home/Jay_Jay/schedule.txt
fi
