# ODA sequence diagrams

### Symptom check - authenticated user

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/kainutom/definitions/master/sequence-diagrams/symptom-check-authenticated-user.puml?3) 

### First citizen login - create Person and Patient resources to ODA PHR
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/first-login.puml?3) 

### Second citizen login
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/second-login.puml?1) 

### Professional login
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/ODA-Practitioner-Login.puml?1) 

### Professional service request list
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/Professional-service-requests.puml?1) 

### Careplan comments and notifications
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/ODA-Careplan-Comment.plantuml?1) 

### Appointment booking
Typical flow of statuses for an appointment: 
* Appointment is written synchronically to EHR API.
* Encounter is written asynchronically to Kanta.
* Slot is same size as Appointment.
* Schedules can be queried with a serviceproduct code, ie EEA. There can be many schedules. https://www.hl7.org/fhir/schedule.html#12.12.1.3

Story: User needs a proposed time.
* ODA Time Booking searches schedules with serviceproduct code (as agreed above, to simplify the case).
* FHIR service returns a bundle of Schedules.
* ODA Time Booking searches bundle data for slots of freeBusyType = FREE
* ODA Time Booking writes appointment status = pending, and print pending Appointments to user. (or status = booked if "pending" is not supported by target system)
* EHR writes slot as freeBusyType = BUSY-TENTATIVE (or freeBusyType = BUSY if not supported by target system)
* User confirms and Appointment status = booked is written.
* EHR writes slot as freeBusyType = BUSY
* Slots that are freeBusyType = BUSY-TENTATIVE but too old, ie. more than 5 minutes, or freeBusyType = BUSY but not status = booked, are written as freeBusyType = FREE.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/appointment-booking.plantuml?1) 

### Send Careplan to service request list
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/ODA_Careplan-send.plantuml?1) 
