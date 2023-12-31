# sdrive.club - Assetto Corsa Game Server
Builds a multi-lobby Assetto Corsa game server on a DigitalOcean VPS. As used on the [Spirited Drive Club][4].

### Assetto Corsa Manager:
* [Assetto Corsa Server Manager v2][1]

### Enabled Game Plugins:
* [KissMyRank (KMR)][2] 
* [sTracker (with pTracker support)][5]
* [Simview][6]

### Features:
* postgresql enabled sTracker
* mariaDB enabled Simview
* fail2ban access monitoring
* munin resource monitoring
* daily backups
* backup restore tools
* kernel tuned for low latency
* systemd app mangement
* zRam memory compression
* nginx reverse proxy with https

### Uses:
* Vagrant dev environment
* Terraform provisioning
* Ansible installation
* [Letsencrypt][3] certificates
* CentOS Stream 9 base OS

### Requires:
* Assetto Corsa Server Manager v2 license
* DigitalOcean VPS
* DigitalOcean reserved IP

### Schema:
<p align="center">
  <img width="80%" height="auto" src="https://raw.githubusercontent.com/ianhaddock/sdrive.club/main/roles/acmanager/acmanager-schema.png">
</p>

### Setup:

```
# pull the repo from git
$ git pull https://git.ianhaddock.com/ian/....

# install requirements
$ ansible-galaxy install -r roles/requirements.yml

# create admin account keyfile
$ ssh-keygen -f ~/.ssh/acgs_admin

# copy the example host_vars file and rename it to your target ip address
cp host_vars/example host_vars/192.168.0.1.yml

....

```


[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/
[3]: https://certbot.eff.org/
[4]: https://sdrive.club/
[5]: https://www.racedepartment.com/downloads/stracker.3510/
[6]: https://www.racedepartment.com/downloads/simview.35249/
