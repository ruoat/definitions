# Deployment architecture

## Networks

ODA deployment will consist of three networks:
1. **DMZ** contains gateways and access control services
2. **Application VLAN** contains ODA microservices
3. **Logging VLAN** contains ODA logging services and its log database

### Incoming connections to ODA

Each network will be protected by a firewall. Firewall rules for incoming 
TCP connections:

| Source | Destination                                         | Ports        |
| ------ | --------------------------------------------------- | ------------ |
| any    | DMZ/API Gateway (beta environment: 185.166.28.69)        | 80, 443 |
| any    | DMZ/X-Road Security Server (beta environment: 185.166.28.70) | 443 |
| DMZ    | Application VLAN/Microservices                   | 6080-6100 (TBD) |
| DMZ    | Logging VLAN/Logging Service (VIP)                          | 6084 |
| Application VLAN | Logging VLAN/Logging Service (VIP)                | 6084 |

Port 22 (SSH) will be opened to every server to provide remote management 
access. Additionally, a monitoring server and/or agents will be included in the
environment (products, protocols and ports to be decided).

If connections from end user LAN are restricted, access to ODA API Gateway 
ports 443 and 80 (which redirects to 443) must be opened. 

### Connections from ODA to local services

Source IP for beta environment is 185.166.28.68.

ODA ESB will connect to local appointment booking service. Connections to other
EHR APIs might be required in the future. 

In the future ODA identity provider module might connect to local minimum 
context server.

### Connections from ODA to Internet

ODA will connect to national services over X-Road and the public Internet. 
ODA will also require access to an NTP server and operating system  update site. 
Details are to be discussed if these connections are restricted.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/deployment.plantuml?1)

## Servers

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/servers.plantuml?1) 
<!-- This generates a picture based on deployment.md. To change the counter in the url above, i.e. servers.plantuml?13 -> servers.plantuml?14 -->

### Peruskokoonpanot

#### Peruskokoonpano
- 3+n kappaletta
- CentOS 7, Ubuntu 16 or Debian 8
- 32G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

#### Integraatiopalvelin
- 2+n kappaletta
- CentOS 7, Ubuntu 16 or Debian 8
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

#### Proxypalvelin
- 2+n kappaletta
- CentOS 7, Ubuntu 16 or Debian 8
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 4 NIC

#### Continuous Integration Server
- 1 kappale
- CentOS 7, Ubuntu 16 or Debian 8
- 32G+ RAM
- 8+ CPU
- 250G+ SSD storage
- 4 NIC

### Kapasiteettipalveluja
- Backup

### Asiantuntijapalvelut
- Sysadmin palvelut 24/7
- Ylläpitoasiantuntija t&m
- Konesaliasiantuntija/arkkitehti t&m

### Optiona
### Kapasiteettipalveluja optiona
- SAN kasvattaminen ainakin 100T asti. SAN redundancy respective to network environment.
- NAS low tier
- Virtuaalipalvelin

#### Database Server
- 2+n kappaletta
- CentOS 7, Ubuntu 16 or Debian 8
- 32G+ RAM
- 4+ CPU
- SAN 1T+ Storage
- 2 NIC

#### Logging Server
- 2+n
- CentOS 7, Ubuntu 16 or Debian 8
- 16G+ RAM
- 4+ CPU
- SAN 1T+ Storage
- 2 NIC

#### Integration Security Server
- CentOS 7 or Ubuntu 14
- 16G+ RAM
- 4+ CPU
- 250G+ SSD storage
- 2 NIC

#### Temporary Server
- CentOS 7, Ubuntu 16 or Debian 8
- 8G+ RAM
- 2+ CPU
- 100G+ storage
- 1 virtual NIC

#### Verkkopalveluja
- Palomuuri, VLAN ja Loadbalancer

### Symbol
| Logical connections        | Optional connections           | Physical connections  |
| ------------- |:-------------:| -----:|
| ![](logical.png)      | ![](optional.png) | ![](physical.png) |
