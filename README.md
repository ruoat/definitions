# ODA definitions

This repository contains ODA architecture and UI definitions.

## Architecture

The architecture is guided by the following principles:
* Modular API first system
* Composed of micro services
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