# sdrive.club - Assetto Corsa Game Server
Builds a single or multi-lobby Assetto Corsa game server on a DigitalOcean VPS. 

As used on the [Spirited Drive Club][4]. Hosting 290+ users who have participated in over 6,300 events with more than 600 other racers online so far this year. 

### Assetto Corsa Manager:
* [Assetto Corsa Server Manager v2][1]

### Enabled Game Plugins:
* [KissMyRank (KMR)][2] 
* [sTracker (with pTracker support)][5]
* [Simview][6]

### Features:
* kernel tuned for low latency
* postgresql enabled sTracker
* mariaDB enabled Simview
* fail2ban access monitoring
* munin resource monitoring
* daily backups
* backup restore tools
* systemd app mangement
* nginx reverse proxy with https

### Uses:
* Vagrant dev environment
* Terraform provisioning
* Ansible installation
* [Letsencrypt][3] certificates
* CentOS Stream 9 base OS
* zRam memory compression

### Requires:
* Assetto Corsa Server Manager v2 license
* DigitalOcean VPS
* DigitalOcean reserved IP

### Plugin Schema:

<p align="center">
  <img width="90%" height="auto" src="https://raw.githubusercontent.com/ianhaddock/acmanager/main/acmanager-schema.png">
  <img width="90%" height="auto" src="http://git.ianhaddock.org/ian/sdrive.club/raw/branch/main/roles/acmanager/acmanager-schema.png">
</p>



[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/
[3]: https://certbot.eff.org/
[4]: https://sdrive.club/
[5]: https://www.racedepartment.com/downloads/stracker.3510/
[6]: https://www.racedepartment.com/downloads/simview.35249/
