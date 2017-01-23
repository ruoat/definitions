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
node node4
database database
node node5
node node6 [
This is a <b>node
----
You can use separator
====
of different kind
....
and style
]

node1 -- node2
node1 .. node3
node1 ~~ node4
node6 == node5
@enduml
