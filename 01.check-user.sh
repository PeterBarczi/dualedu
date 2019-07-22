#!/bin/bash

user=pty
uid=100
gid=1000 

# User existence
if getent passwd $user > /dev/null 2>&1; then
    echo "yes the user exists" && points_1=10
else
    echo "No, the user does not exist"
fi

# Correct uid
if [ $uid==`getent passwd $user | awk -F ":" '{print $3}'` ] ; then
    echo "correct uid" && points=10
else
    echo "wrong uid"
fi

# Correct gid
if [ $gid==`getent passwd $user | awk -F ":" '{print $4}'` ] ; then
    echo "correct gid" && points=10
else
    echo "wrong gid"
fi

