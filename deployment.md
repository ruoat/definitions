@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017. To change the picture, make a pull request with changes to deployment.md and README.md.
endheader

cloud internet
cloud firewall [ 
Firewall 1 and 2
]
interface DMZ
cloud loadbalancer1 [ 
Loadbalancer 1 and 2
]
interface VLAN1 [
VLAN 1 and 2 
]
node nodeas1 [
Application server 
2+n
----
CentOS, Ubuntu or Debian
....
32G+ RAM
4+ CPU
250G+ SSD storage
2 NIC
]
database database1 [
Database Server 
2+n
----
CentOS, Ubuntu or Debian
....
32G+ RAM
4+ CPU
SAN 1T+ Storage
2 NIC
]
database logging1 [
Logging Server 
2+n
----
CentOS, Ubuntu or Debian
....
16G+ RAM
4+ CPU
SAN 1T+ Storage
2 NIC
]
node nodeintegration1 [
Integration Security Server
----
Ubuntu
1+n
....
16G+ RAM
4+ CPU
250G+ SSD storage
2 NIC
]
node nodeintegration2 [
Integration Server
2+n
----
CentOS, Ubuntu or Debian
....
16G+ RAM
4+ CPU
250G+ SSD storage
2 NIC
]
node nodeproxy [
Proxy Server
2+n
----
CentOS, Ubuntu or Debian
....
16G+ RAM
4+ CPU
250G+ SSD storage
4 NIC
]
node nodeci [
Continuous Integration Server
----
CentOS, Ubuntu or Debian
....
32G+ RAM
4+ CPU
250G+ SSD storage
2 NIC
]
node nodevm [
Temporary Server 
0+n
----
CentOS, Ubuntu or Debian
....
8G+ RAM
2+ CPU
100G+ storage
1 virtual NIC
]
database NAS
database Backup

internet -- firewall
firewall -- DMZ 
DMZ -- loadbalancer1 

DMZ -- nodeci
DMZ -- nodeproxy
DMZ -- nodeintegration1
nodeintegration1 ~~ logging1
nodeproxy ~~ logging1

loadbalancer1 -- VLAN1
database1 -- VLAN1
nodeintegration2 -- VLAN1
logging1 -- VLAN1
nodeas1 -- VLAN1
Backup .. VLAN1
Backup .. DMZ
nodevm .. VLAN1
nodevm .. DMZ
NAS .. VLAN1
@enduml
