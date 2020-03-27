#!/bin/bash
set -eo pipefail
shopt -s nullglob

/bin/cp -f /etc/default/kamailio.def /etc/default/kamailio
/bin/cp -f /etc/kamailio/kamailio.cfg.def /etc/kamailio/kamailio.cfg
/bin/cp -f /etc/kamailio/kamctlrc.def /etc/kamailio/kamctlrc

sed -i 's/{{ Env.SIP_DOMAIN }}/'"$SIP_DOMAIN"'/g' /etc/kamailio/kamctlrc
sed -i 's/{{ Env.MYSQL_PORT }}/'"$MYSQL_PORT"'/g' /etc/kamailio/kamctlrc
sed -i 's/{{ Env.MYSQL_PORT }}/'"$MYSQL_PORT"'/g' /etc/kamailio/kamailio.cfg

exec "$@"

# start kamailio
# kamailio -DD -E

# where
for((i=0;i<10;))
do 
  wait
done
