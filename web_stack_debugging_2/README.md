# Web Stack Debugging #2

This project focuses on Linux user permissions and configuring Nginx to run securely.

## Task 0: Run software as another user

**File:** `0-iamsomeoneelse`

A Bash script that accepts a username as an argument and executes `whoami` as that user using `runuser`.

Example:
```bash
./0-iamsomeoneelse www-data
