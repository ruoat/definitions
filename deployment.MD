@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017.
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
8-32G RAM
4-16 CPU
50-100G storage
]
database database1 [
Database Server 
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
SAN 1T+ Storage
]
database logging1 [
Logging Server 
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
SAN 1T+ Storage
]
node nodeintegration1 [
Integration Security Server
----
Ubuntu
1+n
....
8-16G RAM
4-8 CPU
50-100G storage
]
node nodeintegration2 [
Integration server
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
]
node nodeproxy [
Proxy Server
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
]
node nodeci [
Continuous Integration Server
----
CentOS, Ubuntu or Debian
....
8-32G RAM
4-16 CPU
50-100G storage
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
NAS .. VLAN1
@enduml
