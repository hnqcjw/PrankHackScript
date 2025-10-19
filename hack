#!/bin/bash
# HACK

host ${1}
sleep 1

for (( i=0; i<25; i++ )); do
	echo "[ ${1} ] SYSTEM VERSION $(uname -r) CURRENT DIRECTORY $(pwd)"
	sleep 0.1
done

ping -c 6 ${1}

echo "Acessing superuser, log /dev/random when success."
sudo bash -c "echo [  OK  ] PASSWORD CORRECT... LOG /dev/random NOW IN BASE64 FORMAT"
sleep 5

timeout 10s cat /dev/random | base64

for (( i=0; i<500; i++ )); do
	echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
	sleep 0.01
done

for (( j=0; j<20; j++)); do
	printf "10SEC 'FOR_LOOP' AFTERWARDS WILL FETCH DATA AGAIN FROM ${1} REGISTERED IP ADDRESS. COUNT "
	echo $j
	sleep 0.5
done

ping -c 10 ${1}

echo "Ran /usr/bin/env hack successfully."
