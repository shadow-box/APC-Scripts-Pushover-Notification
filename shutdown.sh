#!/bin/bash
curl -s \
  --form-string "token=Pushover-Token" \
  --form-string "user=Pushover-User" \
  --form-string "message=The VMware ESXi Server is beginning the shutdown procedure." \
  https://api.pushover.net/1/messages.json > /dev/null 2>&1
plink -ssh -2 -pw password root@ESXi-Server-IP "/sbin/shutdown.sh && /sbin/poweroff" > /dev/null 2>&1
