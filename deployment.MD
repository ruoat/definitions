@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017.
endheader

cloud internet
node node-as [
Application server
----
CentOS, Ubuntu or Debian
....
8-16G RAM
4-8 CPU
50-100G storage
]
node node2
node node3
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
