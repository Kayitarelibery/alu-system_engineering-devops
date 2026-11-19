# Web Stack Debugging #4

## Description

This project focuses on improving Nginx performance under heavy traffic and reducing failed HTTP requests.

## Task 0: Sky is the limit, let's bring that limit higher

**File:** `0-the_sky_is_the_limit_not.pp`

The task involves:
- Investigating Nginx performance using ApacheBench.
- Identifying the cause of failed requests.
- Increasing the file-descriptor limit available to Nginx.
- Using Puppet to automate the configuration change.
- Restarting Nginx after applying the fix.

## Benchmarking

The assignment uses ApacheBench with:

```bash
ab -c 100 -n 2000 localhost/
```

The objective is to achieve:
- 2,000 completed requests.
- 0 failed requests.
- Improved Nginx reliability under concurrent traffic.

## Technologies Used

- Linux
- Nginx
- ApacheBench
- Puppet
- Bash
