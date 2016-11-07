#!/bin/bash
# AUTHOR: Saddam ZEMMALI
# DATE: 22th December 2015
# Shell script to monitor or watch the low-disk space
# It will send an email to $ADMIN, if the (free available) percentage
# of space is >= 90%
#### Script START here ###
## You can change your threshold value whatever you want ##
THRESHOLD=90
PATHS=/
AWK=/bin/awk
DU=`/usr/bin/du -ks`
GREP=/bin/grep
SED=/bin/sed
CAT=/bin/cat
MAILFILE=/tmp/mailviews$$
MAILER=/bin/mail
## Change ADMIN Mail address as per the requirement ##
mailto=mail@test.com
for path in $PATHS
do
## Validate the Percentage of Disk space ##
DISK_AVAIL=`/bin/df -k / | grep -v Filesystem |awk '{print $5}' |sed 's/%//g'`
if [ $DISK_AVAIL -ge $THRESHOLD ]
then
echo "Please clean up your stuff \n\n" > $MAILFILE
$CAT $MAILFILE | $MAILER -s "Clean up stuff" $mailto
fi
done
## END of the Script ##
