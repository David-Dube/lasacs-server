# LASACS Replit replacement
## Requirements
* systemd
* python/flask
* nginx

## Setup
* Add "include <path to nginx.conf>;" to /etc/nginx/nginx.conf
* Symlink "/etc/systemd/system/lasacs-flask@.service" to flask@.service
* Add a user with "sudo ./create_account <name>"
* Set up port forwarding/DNS (or use Cloudflare tunnels). By default the server listens on port 26430, but you can change this in nginx.conf
