# Linux

This file contains information on Linux permission and user:

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
