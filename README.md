# Simple scripts for launching Amazon EC2 instances with L2TP VPN server running out of the box

## Why? With vpn-launchpad, you can:
 - Create a L2TP server instance on demand with the rate as low as $0.0059 per hour ATM.
 - Delete the server instance after using to avoid unnecessary cost.

## Prerequisites
A Linux system (Ubuntu, Debian RHEL/CentOS etc.) is necessary

## Amazon AWS command line interface installation on Ubuntu/Debian
`$ sudo apt-get isnstall python-pip; pip install --user awscli`

## Server Instance creation
`$ sh zesty64-create.sh`

## Server Instance deletion
`$ sh zesty64-delete.sh`

## VPN user management
Modify the "USERS" section in docker-sevpn/sevpn.env before server instance creation
```
USERS=user0:pass0;user1:pass1;
```

## How to setup on client side
<https://www.softether.org/4-docs/2-howto/9.L2TPIPsec_Setup_Guide_for_SoftEther_VPN_Server>
