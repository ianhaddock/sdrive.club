# Assetto Corsa Game Server
Builds a single or multi-lobby Assetto Corsa game server on a DigitalOcean VPS. 

As used on my server, [sdrive.club][4]. 

## Enabled Plugins:
* [KissMyRank (KMR)][2] 
* [sTracker (with pTracker support)][5]
* [Simview][6]

## Features:
* Daily automated backups
* postgresql enabled sTracker
* mariaDB enabled Simview
* kernel tuned for low latency
* systemd service file app management

## Uses:
* Vagrant dev environment
* Terraform provisioning
* Ansible installation
* NGINX proxy
* [Letsencrypt Cerbot][3] SSL certificates
* CentOS Stream 9 base OS
* zRam memory compression

## Requires:
* [Assetto Corsa Server Manager][1] with Paid license
* DigitalOcean account with one VPS and reserved IP


[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/
[3]: https://certbot.eff.org/
[4]: https://sdrive.club/
[5]: https://www.racedepartment.com/downloads/stracker.3510/
[6]: https://www.racedepartment.com/downloads/simview.35249/
