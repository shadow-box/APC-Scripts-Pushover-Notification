#!/bin/bash
curl -s \
  --form-string "token=Pushover-Token" \
  --form-string "user=Pushover-User" \
  --form-string "message=Power has been restored to the VMware ESXi Server." \
  https://api.pushover.net/1/messages.json > /dev/null 2>&1
