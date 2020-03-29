# Linux

This file contains information on Linux system.

## sshd

- allow root login with key only add `PermitRootLogin without-password` to `/etc/ssh/sshd_config`
  Note: `without-password` is deprecated and must be replaced by `prohibit-password`
- connect to a server with public key disable `ssh -o PubkeyAuthentication=no example.org`

## User and permission

- bind privileged port as non-root user: `setcap 'cap_net_bind_service=+ep' /usr/local/bin/caddy`
- create a system user: `useradd \
  -g www-data --no-user-group \
  --home-dir /var/www --no-create-home \
  --shell /usr/sbin/nologin \
  --system --uid 33 www-data`
- force a group on directory: `chmod g+s /var/www`
- force a group recursively: `find /var/www -type d -exec chmod g+s {} +`
- force permission on files: `setfacl -m "default:group::rwx" /var/www`
- force permission on files recursively: `find /var/www -type d -exec setfacl -m d:g::rwx {} +`

## Logs

- to read journalctl log for non root user: `adduser aitva systemd-journal`
- to read syslog from `/var/log`: `adduser aitva adm`
- to filter a syslog journal per process: `cat syslog | awk '$5 ~ /^myapp/' | less -S`
- to unzip and filter archived logs: `gunzip --stdout syslog.4.gz | awk '$5 ~ /^monitor/' | less -S`

## BASH

- get the directory of a script: `DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"`

## Docker

- mount a volume in a container: `docker run -v $(pwd)/my/folder:/docker/folder postgres:11`
- exit a container started with `-ti`: `ctrl+p,ctrl+q`
