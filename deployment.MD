@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017.
endheader

cloud internet
node nodeas [
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
node nodeci [
Continuous Integration Server
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
]

nodeas -- database1
nodeas -- nodeintegration1
nodeas -- nodeintegration2

@enduml
