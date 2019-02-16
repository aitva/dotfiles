# Systemd

This is a memo on systemd command and functionalities.

## Simple unit file

Unit files should be placed into `/etc/systemd/system`. The simplest unit
file should contains:

```
# should be at /etc/systemd/system/my_app.service
[Unit]
Description=My app description
Wants=network-online.target
After=network-online.target

[Service]
User=www-data
Group=www-data
WorkingDirectory=/var/www

Environment="YOUR_PUBLIC_VAR=some public stuff"

ExecStart=/opt/app_dir/my_app
Restart=always
RestartSec=30

[Install]
WantedBy=multi-user.target
```

To start an unit file run `systemctl start my_app` and to enable it `systemctl enable my_app`.
Enabling the app will make systemd start your app on system startup.

## Logging

Systemd will collect logs from your app, here are some command to look at it:

- see all the logs: `journalctl`
- see only the logs for our unit: `journalctl -u my_app`
- watch the live logs of our unit: `journalctl -fu my_app`

## Timer

Systemd comes with a timer functionnality to start app at repeating time. To create
a timer for an app you will need two files:

```
# /etc/systemd/system/echo-app.service
[Unit]
Description=The echo app

[Service]
User=www-data
ExecStart=/usr/bin/echo "Timer expired!"
Type=oneshot
```

```
# /etc/systemd/system/echo-app.timer
[Unit]
Description=A timer to start the echo app hourly

[Timer]
OnCalendar=hourly

[Install]
WantedBy=timers.target
```

Here are a list of command to remember:

- run the app: `systemctl start echo-app`
- enable the timer: `systemctl enable echo-app.timer`
- start the timer: `systemctl start echo-app.timer`
- list the timer: `systemctl list-timers`
