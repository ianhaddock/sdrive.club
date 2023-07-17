# Asetto Corsa Server
This builds an Assetto Corsa server with KMR on a VPS.

## Uses:
* Justapenguin's [Assetto Corsa Server Manager][1]
* Brioche's [Kiss My Rank plugin (KMR)][2]
* Ansible

## Migration:
manually backup kmr stats
copy the certs over / setup for new certs
unzip files
chown to assetto
rebuild indexes in GUI (~10 minutes)
run ansible play

[1]: https://github.com/JustaPenguin/assetto-server-manager
[2]: https://www.racedepartment.com/downloads/kissmyrank-local-assetto-corsa-server-plugin.17667/

