# Firewall

## Project Overview

This project is part of the ALU System Engineering and DevOps curriculum. It focuses on configuring network security using UFW (Uncomplicated Firewall) on Ubuntu servers.

## Learning Objectives

- Understand firewall functionality.
- Configure UFW on Ubuntu servers.
- Control incoming and outgoing network traffic.
- Allow specific TCP ports.
- Configure port forwarding using iptables rules.

## Task 0: Block All Incoming Traffic But

**File:** `0-block_all_incoming_traffic_but`

Configure UFW on `web-01` to block all incoming traffic except:

| Port | Protocol | Purpose |
|---|---|---|
| 22 | TCP | SSH |
| 80 | TCP | HTTP |
| 443 | TCP | HTTPS |

Commands used:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable
```

## Task 1: Port Forwarding

**File:** `100-port_forwarding`

Configure UFW to redirect incoming TCP traffic from port `8080` to port `80` on `web-01`.

The configuration is made in `/etc/ufw/before.rules`:

```text
*nat
:PREROUTING ACCEPT [0:0]
-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
COMMIT
```

After modifying the configuration, reload UFW:

```bash
sudo ufw reload
```

The expected result is that requests to ports 80 and 8080 both reach the Nginx web server.

## Technologies Used

- Ubuntu Linux
- UFW
- iptables
- TCP/IP networking
- Git and GitHub

## Author

Kayitare Libery

ALU – System Engineering and DevOps
