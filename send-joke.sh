#!/bin/bash -x
# A script to send a joke to a Discord channel.  Intended to be triggered by cron.

JOKE=$(curl -s https://icanhazdadjoke.com)

curl -s -H 'Content-Type: application/json' --data "{\"content\" : \"$JOKE.\n\n \"}" "$WEBHOOK" > /dev/null
