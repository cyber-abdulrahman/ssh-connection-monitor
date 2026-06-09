#!/bin/bash

THRESHOLD=10

echo "===== SSH Connection Monitor ====="
echo

SUCCESS=$(sudo grep -c "Accepted password for" /var/log/auth.log)
FAILED=$(sudo grep -c "Failed password for" /var/log/auth.log)

if [ "$SUCCESS" -eq 0 ]; then
	echo "There are no successful SSH logins"
else
	echo "Successful SSH Logins: $SUCCESS"
	echo
	echo "Recent Successful Logins:"
	sudo grep "Accepted password for" /var/log/auth.log | grep -v 'sudo' | tail -1
fi

if [ "$FAILED" -eq 0 ]; then
	echo "There are no failed SSH logins"
else
	echo "Failed SSH Logins: $FAILED"
	echo
	echo "Recent Failed Logins:"
	sudo grep "Failed password for" /var/log/auth.log | grep -v 'sudo' | tail -1
fi

echo
if [ "$FAILED" -gt "$THRESHOLD" ]; then
	echo "WARNING: High number of failed SSH login attempts!"
fi
