#! /bin/sh

cp transientlog.init /etc/init.d/transientlog
chmod a+x /etc/init.d/transientlog
insserv transientlog

cp transientlog.crontab /etc/cron.hourly/transientlog
chmod a+x /etc/cron.hourly/transientlog

#update-rc.d transientlog start 00 2 3 4 5 . stop 99 0 1 6 . 
update-rc.d transientlog defaults

service transientlog start
