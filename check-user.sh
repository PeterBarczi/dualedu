#!/bin/bash

user=pety
uid=1000
gid=1000 

getent passwd pety | awk -F ":" '{print $3}'

if getent passwd $user > /dev/null 2>&1; then
    echo "yes the user exists"
else
    echo "No, the user does not exist"
fi

#getent passwd pety | awk -F ":" '{print $3}' -> uid
#getent passwd pety | awk -F ":" '{print $4}' -> gid
