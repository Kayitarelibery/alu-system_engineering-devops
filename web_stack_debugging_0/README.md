# Web Stack Debugging

## Project Overview

This project focuses on debugging a web stack running inside a Docker container. The objective is to identify and fix an issue preventing Apache from serving a webpage correctly.

## Task 0: Give Me a Page!

### Objective

Configure Apache to run successfully inside a Docker container and return the following message when accessing the root page:

`Hello Holberton`

### Problem

After starting the Docker container, accessing the web server through port 8080 did not return the expected webpage. The connection was being reset because the Apache service was not running.

### Solution

1. Started the Docker container using the provided image.
2. Connected to the running container.
3. Checked the Apache service status.
4. Discovered that Apache was stopped.
5. Started Apache using the following command:

```bash
service apache2 start
```

### Verification

Tested the web server from the local terminal using:

```bash
curl localhost:8080
```

Expected output:

```text
Hello Holberton
```

### Technologies Used

- Linux
- Docker
- Apache HTTP Server
- Bash
- Ubuntu

## Conclusion

This project demonstrates the importance of troubleshooting web server services, understanding Docker containers, and using Linux commands to identify and resolve infrastructure problems.
