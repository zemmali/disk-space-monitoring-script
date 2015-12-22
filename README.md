# disk-space-monitoring-script
Assalamu ‘alaikum wa rahmatullahi wa barakatuhu,

We pray to Allaah subhanahu wa ta’ala that all of you are doing well.


Explanation of script: Above script is written using one FOR loop and one IF condition.

/bin/df -k / | grep -v Filesystem |awk ‘{print $5}’ |sed ‘s/%//g’     <<– This line will calculate the disk space in percentage number

if [ $DISK_AVAIL -ge $THRESHOLD ]   <<– This IF condition will validate the space, which is provided by the above command then number greater then or equal to 90 it will trig an alert using mail command to your given ADMIN address.

 

NOTE: Before you schedule this script please change ADMIN Email address and Threshold value.
I hope this disk space monitoring script will help to monitor the disk space.

-- 

Best regards - Mit freundlichen Grüßen - Meilleures Salutations - 此致 - مع خالص تحياتي

Saddam ZEMMALI
