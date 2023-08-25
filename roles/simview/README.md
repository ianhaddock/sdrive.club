## Simview

Notes:
ACSM chaining does not work with KMR + sTracker + simview. ACSM will override whatever you setup and force the flow to go ACSM -> sTracker -> KMR. Simview cannot parse the output of the UDP relay from KMR after it passes though sTracker. 

ACSM -> KMR -> Simview does work. NOTE the KMR relay language can be confusing. You enter the send port (plugin address equivilient) as the UDP_relay_to value (127.0.0.1:13100  as ex) and use the *same port* that KMR uses as the ACSM Plugin Address. (11000). Note how this is named. KMR references the ACSM value name - not a KMR value name. 

So instead of linking plugin address -> local port, plugin address -> local port down the chain. You end up inputting the ACSM plugin address as the 'port' value in Simview. This is because the ACSM plugin address is being consumed by KMR as its local port. So you effectively input KMRs local port. 

So: 

ACSM RX local port: 12000
ACSM TX plugin address: 11000

-to-

KMR RX local port: 11000 (auto-assigned by ACSM - there is no port value in the GUI)
KMR TX UDP Relay To: 13100

-to-

Simview RX local port: 13100
Simview TX 'port': 11000


Yes, you can add multiple UDP relay To values in KMR and you would think you could then add sTracker after KMR, but when you start ACSM it will override you and set the relays to ACSM -> sTracker -> KMR. Yes this is frustrating.

It can be done outside of the ACSM GUI, but then you have to set KMR values from the commandline. Which limits things.
