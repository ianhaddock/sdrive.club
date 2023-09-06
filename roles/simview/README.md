## Simview
Simview "provides live timing and statistics for all types of Assetto Corsa multiplayer sessions" and is available [here][1] on Race Department. The developer also has a discord channel [here][2]. 

### Installation

There are two main components, a http server and a 'simview writer' which reads the UDP stream from the AC server as well as parses some AC server logs. Each AC  server/lobby requires a specific config.toml file plus the http server config.toml. 

### Additions

This setup uses systemd service files to manage the app, and does not use the ACSM plugin hook to start and stop the writer apps. In testing this looked to be the more reliable solution as the writer apps are somewhat particualari and work best when started before AC server starts.

### Notes

* TLS/https: As far as I understand, TLS/https is not yet supported for multi-server intallations. While the http app can run under TLS, the writer apps do not respond to WSS: correctly. 
* Nginx proxy: Websocket calls from the http server use different ports, but the same endpoint to differentiate between 'writer' apps. To proxy correctly, nginx would have to parse the target port as a proxy indicator. This has not been shown to work by anyone in the community so far.
* Segfaults: the writer apps do not look to have much error handling and will often segfault in testing. I recommend not looking into these kinds of errors until both the http service and writer are configured as you prefer and running. 

### Plugin chaining

If you plan to use the ACSM GUI to manage plugins, ACSM v2 will automatically organise how AC plugins 'chain' together. However it will respect manually set port values _as long as the order of plugin chaining remains as ACSM expects_. This can cause some confusion if not taken into consideration. The order ACSM dictates in this case is ACSM -> sTracker -> KMR -> simview.

Simview is unable to relay UDP messages and thus must be at the end of the chain. 

The KMR relay language can be confusing. You enter the send port value (plugin address equivilient) as the 'UDP_relay_to' value (ex: 127.0.0.1:13100) and use the *same port* that KMR uses as the ACSM Plugin Address. (ex: 11000). Note how this is named. KMR references the ACSM value name and does not use a KMR value name. 
This means instead of linking plugin address -> local port, plugin address -> local port down the chain. You input the ACSM plugin address as the 'port' value in Simview. This is because the ACSM plugin address is being consumed by KMR as its local port. So you effectively input KMRs local port. 

So: 

ACSM RX local port: 12000
ACSM TX plugin address: 11000

-to-

KMR RX local port: 11000 (auto-assigned by ACSM - there is no port value in the GUI)
KMR TX UDP Relay To: 13100

-to-

Simview RX local port: 13100
Simview TX 'port': 11000


KMR does allow multiple UDP relay values suggesting you could then add sTracker after KMR, but when you start ACSM it will force the plugin chain path to ACSM -> sTracker -> KMR.



[1]:https://www.racedepartment.com/downloads/simview.35249/
[2]:https://discord.gg/X5yrdr2
