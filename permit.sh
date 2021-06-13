#!/bin/bash
chgrp 3year /home/sysAd_10
chmod g+r /home/sysAd_10
chgrp 3year /home/webDev_10
chmod g+r /home/webDev_10
chgrp 3year /home/appDev_10
chmod g+r /home/appDev_10
for i in {1..30}
do
if [ $i -lt 10 ]
then
chgrp 3year /home/sysAd_0$i #add to group
chmod g+r /home/sysAd_0$i
chgrp 3year /home/appDev_0$i 
chmod g+r /home/appDev_0$i 
chgrp 3year /home/webDev_0$i 
chmod g+r /home/webDev_0$i   
elif [ $i == 10 ]
then
continue
elif [ $i -lt 21 ]
then
chgrp 4year /home/sysAd_$i 
chmod g+r /home/sysAd_$i
chgrp 4year /home/appDev_$i 
chmod g+r /home/appDev_$i 
chgrp 4year /home/webDev_$i 
chmod g+r /home/webDev_$i  
elif [ $i -lt 31 ]
then
chgrp qhead /home/sysAd_$i 
chmod g+r /home/sysAd_$i
chgrp qhead /home/appDev_$i 
chmod g+r /home/appDev_$i 
chgrp qhead /home/webDev_$i 
chmod g+r /home/webDev_$i 
fi
done
