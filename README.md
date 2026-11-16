# Firewall

## Project Overview

This project is part of the ALU System Engineering and DevOps curriculum. It focuses on configuring and managing network firewalls using UFW (Uncomplicated Firewall) on Ubuntu servers.

The project explores how firewalls control incoming network traffic and how port forwarding can redirect network requests to specific services.

## Learning Objectives

- Understand the purpose of firewalls.
- Configure UFW on Ubuntu servers.
- Control incoming and outgoing network traffic.
- Allow specific TCP ports.
- Configure port forwarding using UFW and iptables rules.
- Understand how network traffic is redirected between ports.

## Task 0: Block All Incoming Traffic But

**File:** `0-block_all_incoming_traffic_but`

Configure UFW on `web-01` to block all incoming traffic except the following TCP ports:

| Port | Protocol | Purpose |
|---|---|---|
| 22 | TCP | SSH |
| 80 | TCP | HTTP |
| 443 | TCP | HTTPS |

The configuration uses the following commands:

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

The configuration is implemented in `/etc/ufw/before.rules` using an iptables NAT rule:

```text
*nat
:PREROUTING ACCEPT [0:0]
-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
COMMIT
```

After updating the configuration, UFW is reloaded to apply the changes.

The expected result is that requests to both port 80 and port 8080 reach the Nginx web server.

## Technologies Used

- Ubuntu Linux
- UFW (Uncomplicated Firewall)
- iptables
- TCP/IP networking
- Bash
- Git and GitHub

## Repository Structure

```text
firewall/
├── 0-block_all_incoming_traffic_but
├── 100-port_forwarding
└── README.md
```

## Author

Kayitare Libery

ALU – System Engineering and DevOps
