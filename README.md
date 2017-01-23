#ODA definitions

##Deployment architecture

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/deployment.md?16) <!--- This generates a picture based on deployment.MD. To change the counter in the url above, i.e. deployment.MD?13 -> deployment.MD?14 --->

###Peruskokoonpanot
####Peruskokoonpano 
- 3+n kappaletta
- CentOS, Ubuntu or Debian
- 32G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

####Integraatiopalvelin
- 2+n kappaletta
- CentOS, Ubuntu or Debian
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

####Proxypalvelin
- 2+n kappaletta
- CentOS, Ubuntu or Debian
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 4 NIC

###Optiona 
####Database Server 
- 2+n kappaletta
- CentOS, Ubuntu or Debian
- 32G+ RAM
- 4+ CPU
- SAN 1T+ Storage
- 2 NIC

####Logging Server 
- 2+n
- CentOS, Ubuntu or Debian
- 16G+ RAM
- 4+ CPU
- SAN 1T+ Storage
- 2 NIC

####Integration Security Server
- Ubuntu
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

####Temporary Server 
- CentOS, Ubuntu or Debian
- 8G+ RAM
- 2+ CPU
- 100G+ storage
- 1 virtual NIC

###Kapasiteettipalveluja
- SAN kasvattaminen ainakin 100T asti.
- NAS low tier 
- Backup
- Virtuaalipalvelin

###Verkkopalveluja
- Palomuuri, VLAN ja Loadbalancer

###Asiantuntijapalvelut
- Sysadmin palvelut 24/7
- Ylläpitoasiantuntija t&m
- Konesaliasiantuntija/arkkitehti t&m
