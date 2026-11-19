# Web Stack Debugging #3

## Description

This project focuses on debugging an Apache web server returning an HTTP 500 Internal Server Error. It introduces the use of `strace` to investigate system calls and identify the source of server errors.

## Task 0: Strace is your friend

**File:** `0-strace_is_your_friend.pp`

The task involves:
- Using `strace` to investigate why Apache returns an HTTP 500 error.
- Identifying the incorrect file extension in the WordPress configuration.
- Using Puppet to automate the correction.
- Replacing the incorrect `phpp` extension with `php` in `wp-settings.php`.

## Technologies Used

- Linux
- Apache
- WordPress
- `strace`
- Puppet
- Bash
