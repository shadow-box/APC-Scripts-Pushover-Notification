#!/bin/bash
curl -s \
  --form-string "token=Pushover-Token" \
  --form-string "user=Pushover-User" \
  --form-string "message=The VMware ESXi Server has lost power." \
  https://api.pushover.net/1/messages.json > /dev/null 2>&1
