#!/bin/bash

echo "===== SSH Connection Monitor ====="
echo

SUCCESS=$(sudo grep -c "Accepted password" /var/log/auth.log)
FAILED=$(sudo grep -c "Failed password" /var/log/auth.log)

if [ "$SUCCESS" -eq 0 ]; then
	echo "There are no successful SSH logins"
else
	echo "Successful SSH Logins: $SUCCESS"
fi

if [ "$FAILED" -eq 0 ]; then
	echo "There are no failed SSH logins"
else
	echo "Failed SSH Logins: $FAILED"
fi
