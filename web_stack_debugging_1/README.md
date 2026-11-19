# Web Stack Debugging #1

## Project Overview

This project focuses on debugging an Nginx web server running inside an Ubuntu container. The objective is to identify why Nginx is not listening on port 80 and create a Bash script to automatically fix the issue.

## Task 0: Nginx Likes Port 80

### Objective

Configure Nginx to run successfully and listen on port 80 on all active IPv4 addresses.

### Problem

Nginx was installed inside the Ubuntu container but was not running. As a result, requests to port 80 failed with a connection refused error.

### Investigation

The following commands were used to investigate the problem:

```bash
service nginx status
nginx -t
grep -R "listen" /etc/nginx/sites-enabled/
```

The investigation confirmed that the Nginx configuration was valid and already configured to listen on port 80. However, the service was stopped.

### Solution

Nginx was started using:

```bash
service nginx start
```

### Automation

A Bash script named `0-nginx_likes_port_80` was created to automate the fix:

```bash
#!/usr/bin/env bash
service nginx start
```

### Verification

The following command was used to confirm that Nginx was listening:

```bash
ss -lntp
```

The output confirmed that Nginx was listening on:

- `0.0.0.0:80` — all IPv4 interfaces.
- `[::]:80` — IPv6 interfaces.

The script was also tested by stopping Nginx and executing it again. Nginx successfully restarted.

### Technologies Used

- Ubuntu Linux
- Docker
- Nginx
- Bash scripting
- Linux networking commands

## Conclusion

This project demonstrates practical Linux troubleshooting, Nginx service management, Docker container debugging, and Bash automation.
