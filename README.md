# Assetto Corsa Game Server
Builds a multi-lobby Assetto Corsa game server using Assetto Corsa Server Manager, and Kiss My Rank (KMR) on a DigitalOcean VPS.

There are various how-tos online for parts of building such a service, but this is an attempt to create a simple and sane starting point for those who want to host a game lobby reliably. Used on [my server, sdrive.club][4].

This is an early public release. 

## Uses:
* CentOS Stream 9
* Justapenguin's [Assetto Corsa Server Manager v2][1]
* Brioche's [Kiss My Rank plugin (KMR)][2]
* nginx
* Letsencrypt [Cerbot][3]
* Ansible
* Terraform
* Vagrant

## Requires:
* Paid license for Assetto Corsa Server Manager v2
* DigitalOcean account with one VPS 
* One reserved IP assigned to the VPS

[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/
[3]: https://certbot.eff.org/
[4]: https://sdrive.club/
