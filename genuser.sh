#!/bin/bash
#Users should create a password as soon as they log in
groupadd 2year
groupadd 3year
groupadd 4year
groupadd qhead
useradd -m Jay_Jay
usermod -aG 2year,3year,4year,qhead Jay_Jay
passwd -d Jay_Jay
for i in {1..30}
do
if [ $i -lt 10 ]
then
   useradd -m sysAd_0$i
   passwd -d sysAd_0$i
   usermod -aG 2year sysAd_0$i
   useradd -m appDev_0$i
   passwd -d appDev_0$i
   usermod -aG 2year appDev_0$i
   useradd -m webDev_0$i
   passwd -d webDev_0$i
   usermod -aG 2year webDev_0$i
else
   useradd -m sysAd_$i
   passwd -d sysAd_$i
   usermod -aG 2year sysAd_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3year sysAd_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4year sysAd_$i 
   fi
   useradd -m appDev_$i
   passwd -d appDev_$i
   usermod -aG 2year appDev_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3year appDev_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4year appDev_$i 
   fi
   useradd -m webDev_$i
   passwd -d webDev_$i
   usermod -aG 2year webDev_$i
   if [ $i -gt 10 ] 
   then usermod -aG 3year webDev_$i 
   fi
   if [ $i -gt 20 ] 
   then usermod -aG 4year webDev_$i 
   fi
fi  
done