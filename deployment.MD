@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017.
endheader

cloud internet
cloud firewall
cloud dmz
cloud loadbalancer
node nodeas1 [
Application server 
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
]
node nodeas2 [
Application server 
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
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
50-100G storage
]
database logging1 [
Logging Server 
2+n
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
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
Continuous Integration Server
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
8-16G RAM
4-8 CPU
50-100G storage
]

internet -- firewall
firewall -- dmz 
dmz -- loadbalancer 
dmz -- nodeci
dmz -- nodeproxy
loadbalancer -- nodeas1
nodeas1 -- database1
nodeas1 -- nodeintegration1
nodeas1 -- nodeintegration2
nodeas1 -- logging1
loadbalancer -- nodeas2
nodeas2 -- database1
nodeas2 -- nodeintegration1
nodeas2 -- nodeintegration2
nodeas2 -- logging1 

@enduml
