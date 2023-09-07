# sdrive.club - Assetto Corsa Game Server
Builds a single or multi-lobby Assetto Corsa game server on a DigitalOcean VPS. 

As used on my server, [Spirited Drive Club][4]. Which hosts over 290 Discord channel users, who have participated in over 6,300 race events with over 600 unique racers since 3/2022. Racing online since 2020. 

### Enabled Plugins:
* [KissMyRank (KMR)][2] 
* [sTracker (with pTracker support)][5]
* [Simview][6]

### Features:
* Automated backups
* postgresql enabled sTracker
* mariaDB enabled Simview
* kernel tuned for low latency
* systemd service file app management

### Uses:
* Vagrant dev environment
* Terraform provisioning
* Ansible installation
* NGINX proxy
* [Letsencrypt][3] certificates
* CentOS Stream 9 base OS
* zRam memory compression

### Requires:
* [Assetto Corsa Server Manager][1] with Paid license
* DigitalOcean account with one VPS and reserved IP


[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/
[3]: https://certbot.eff.org/
[4]: https://sdrive.club/
[5]: https://www.racedepartment.com/downloads/stracker.3510/
[6]: https://www.racedepartment.com/downloads/simview.35249/
