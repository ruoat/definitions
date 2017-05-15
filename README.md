# ODA definitions

This repository contains ODA architecture and UI definitions.

## Architecture

The architecture is guided by the following principles:
* Modular API first system
* Composed of microservices
* Simple and minimalistic user experience
* User centric
* Multilingual
* Agile development
* Systems design
* Small is beautiful
* Open data
* Open source
* Open API
* Open standards
* My Data.

Further reading (in Finnish): [Arkkitehtuuriperiaatteet](arkkitehtuuriperiaatteet.md)

### Modules

Currently implemented modules are listed below. See their repositories for more
detailed software achitecture description.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/modules.plantuml?1) 
<!-- To invalidate caches change the counter in the url above, i.e. modules.plantuml?13 -> modules.plantuml?14 -->

#### [oda-backend](https://github.com/omahoito/oda-backend) 
Backend provides static resources, API gateway and integration to Suomi.fi 
SSO. Backend is the contact point for web browsers and handles security aspects
such as CSRF protection.

#### [oda-esb](https://github.com/omahoito/oda-esb) 

ODA ESB provides XML interfaces for external services via KaPa and converts
external XML interfaces to FHIR/JSON interfaces for internal services.

#### [oda-fhir-service](https://github.com/omahoito/oda-fhir-service) 

FHIR Service Provides FHIR resource APIs on top of oda-phr and external systems 
that provide FHIR APIs.

#### [oda-logging-service](https://github.com/omahoito/oda-logging-service) 
Logging Service provides a centralized logging server and a client library that
handles server communication when built into other services.
  
#### [oda-phr](https://github.com/omahoito/oda-phr) 
Personal health record database. 
 
#### [oda-service-common](https://github.com/omahoito/oda-service-common) 
Shared server side Java library.
 
#### [oda-web-front](https://github.com/omahoito/oda-web-front) 
Web Browser UI that is served from oda-backend. 

### Information architecture

Information is stored primarily as FHIR resources.
Data model is described in [ODA RFC repository](https://github.com/omahoito/rfc/blob/master/README.md).

ODA uses standardized codesets whenever possible. See full [codes and code systems listing](codesets.md).

### Integrations
See [Integrations](integrations.md) for details.

#### KaPa integration

KaPa services are provided and consumed via 
[oda-esb](https://github.com/omahoito/oda-esb) and an X-Road Security Server.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/kapa.plantuml?1) 
<!-- To invalidate caches change the counter in the url above, i.e. kapa.plantuml?13 -> kapa.plantuml?14 -->

### Functional architecture

Some of the module interactions are described with 
[sequence diagrams](sequence-diagrams/).

How a service provider is selected for a customer is described in 
[customer-to-service.md](customer-to-service.md).

### Key technologies

Current microservices are implemented as standalone Java 8 applications 
with [Spring Boot](https://projects.spring.io/spring-boot/).
[PostgreSQL 9.6](https://www.postgresql.org/) is used as database.

Web frontend is implemented as an EcmaScript 6/HTML 5 single page application.
Key libraries include 
* [react](https://facebook.github.io/react/) UI-component library
* [react-router v4](https://github.com/ReactTraining/react-router/) front-end routing and
* [redux](http://redux.js.org/) for application state handling.


### Deployment architecture
See [Deployment architecture](deployment.md)

## Visual design

* [Wireframes](sketch-wireframes/)
* [Style guide](style-guide/)

## Tools and conventions

* Wireframes are produced with [Sketch](https://www.sketchapp.com/).
* [Working with diagrams](diagrams.md)
* [Code Conventions](codeconventions.md)
* [Working with FHIR profiles](https://github.com/omahoito/rfc#tools-for-editing-profiles)

## Glossary

See [glossary.md](glossary.md)
