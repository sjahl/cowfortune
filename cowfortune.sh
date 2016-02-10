#!/bin/bash

while true; do
    /usr/games/fortune -a | /usr/games/cowsay >> /var/log/cowfortune.log 2>&1
    sleep 5
done
