# SSH Connection Monitor

A simple Bash script that monitors SSH login activity using Linux authentication logs.

## Features

* Counts successful SSH logins
* Counts failed SSH login attempts
* Shows the most recent successful login
* Shows the most recent failed login
* Displays a warning when failed login attempts exceed a defined threshold

## Technologies Used

* Bash
* Linux
* OpenSSH
* grep

## Example Output

```text
===== SSH Connection Monitor =====

Successful SSH Logins: 12

Recent Successful Logins:
Accepted password for abdulrahman from 127.0.0.1

Failed SSH Logins: 7

Recent Failed Logins:
Failed password for abdulrahman from 127.0.0.1

WARNING: High number of failed SSH login attempts!
```

## Usage

```bash
chmod +x monitor.sh
./monitor.sh
```

## Notes

This project was built as part of my Linux learning journey. It uses Bash to analyze SSH login activity from Linux authentication logs and provide a quick summary of recent login events.
