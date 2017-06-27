# Directing customers to services

Customers get services from public sector or private service providers. Service 
providers are modeled as units that have facilities. Each facility has a service 
request queue in ODA. Facilities provide appointments, online 
consultation and phone consultation. 

Facilities are stored in ODAs service registry. Facility metadata includes 
an appointment service API URL, contact information, geolocation and area of 
responsibility.  It can also specify that only online consultation via ODA is 
provided.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/sequence-diagrams/service-sequence.plantuml?0)
 
Customer's user profile includes information about geolocation and home 
address. The location data is collected from suomi.fi login (VRK data), device 
and usage history. The profile may also include contract numbers for a 
designated health service. If there is no contract number, the customer is 
taken care by public health care.

After the customer fills self-assessment form ODA 1 decision support system 
returns codes for suggested services. ODA 2 looks up what facilities provide 
the given service.
1. If the customer has a contract with some some service provider the nearest
   facility of that provider is selected
2. If there is no contracts, public sector facilities are searched.
   1. If customer's location is some facility's area of responsibility, that 
      facility is selected. Customer's location is resolved by geocoding 
      customer's address. 
   2. If there is no match the nearest facility is selected. 

Available time slots for given service codes are queried from the appointment 
service. The ODA client displays the proposed facility locations and appointment 
slots to the user. The user selects an appointment, sends a message in ODA or 
makes a phone call to given phone number. If the proposed appointment time is 
not acceptable the user can ask for more. If there are no appointments slots 
available, facility's phone number will be displayed.

A professional receives information from a reserved slot, message or answers 
the phone. Messages are stored in facility's service request queue in ODA.
 
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/service-concepts.plantuml?0)
