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
| Module | Description |
| ------ | ------- |
| oda-backend | Provides static resources, API gateway and integration to Suomi.fi SSO |
| oda-fhir-service | Provides FHIR resource APIs on top of oda-phr |
| oda-logging-service | Provides centralized logging server and a client library |
| [oda-phr](https://github.com/omahoito/oda-phr) | Personal health record database |
| oda-service-common | Shared server side Java library |
| oda-web-front | Web Browser UI that is served from oda-backend |

### Information architecture

Information is stored primarily as FHIR resources.
Data model is described in [ODA RFC repository](https://github.com/omahoito/rfc/blob/master/README.md).

ODA uses standardized codesets whenever possible. See full [codes and code systems listing](codesets.md).

### Integrations
See [Integrations](integrations.md)

### Functional architecture
Some of the module interactions are described with [sequence diagrams](sequence-diagrams/).

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