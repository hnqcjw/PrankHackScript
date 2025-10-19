#!/bin/bash
# HACK

for (( i=0; i<25; i++ )); do
	echo " ${1} YOU ARE IN $(pwd) {$i} SYSTEM VERSION $(uname -r)"
	sleep 0.1
done

ping -c 6 ${1}

echo "Acessing superuser, log /dev/random when success."

sleep 5

timeout 10s cat /dev/random | base64

for (( i=0; i<500; i++ )); do
	sleep 0.01
done

for (( i=0; i<10; i++)); do
	printf "__CALL \"sleep 1\" function {shell} for (( i=0; i<10; i++)) ... ATTEMPT "
	echo $i
	sleep 1
done
sleep 10

echo "Ran /usr/local/bin/hack / /usr/bin/env hack successfully."
