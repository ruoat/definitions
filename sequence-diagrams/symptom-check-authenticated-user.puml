@startuml
header
Sequence diagram for authenticated user to fill in symptom check
endheader

participant ODA_WEB_UI
participant ODA_FHIR_API

note left of ODA_WEB_UI #aqua

Pre-Condition 1: User is logged in
Pre-Condition 2: Patient/person is stored in the phr
Pre-Condition 3: UI knows patient's/person's phr identifier
Pre-Condition 4: Questionnaire is stored in the phr

end note

box "ODA 2" #LightBlue
	participant ODA_WEB_UI
	participant ODA_FHIR_API
end box

ODA_WEB_UI -> ODA_FHIR_API: GET [oda-fhir-base]/Questionnaire?useContext=[system]|[code]
ODA_FHIR_API -> ODA_PHR: GET [oda-fhir-base]/Questionnaire?useContext=[system]|[code]
ODA_FHIR_API <-- ODA_PHR: HTTP 200 OK [Bundle - collection of questionnaires]
ODA_WEB_UI <-- ODA_FHIR_API: Bundle [collection of questionnaires]

ODA_WEB_UI -> ODA_WEB_UI: Select the questionnaire
ODA_WEB_UI -> ODA_FHIR_API: POST [oda-fhir-base]/Questionnaire/[id]/$populate
ODA_FHIR_API -> ODA_PHR: GET [phr-fhir-base]/Questionnaire/[id]
ODA_FHIR_API <-- ODA_PHR : HTTP 200 OK  [Questionnaire]
ODA_FHIR_API -> ODA_FHIR_API: Pre-populate the questionnaireResponse
ODA_WEB_UI <-- ODA_FHIR_API: HTTP 200 OK  [QuestionnaireResponse]

ODA_WEB_UI -> ODA_WEB_UI: Fill in the questionnaire response
ODA_WEB_UI -> ODA_FHIR_API: POST [oda-fhir-base]/QuestionnaireResponse/$checkSymptoms
ODA_FHIR_API -> ODA_FHIR_API: Generate DSSRequest
ODA_FHIR_API -> ODA1: POST [oda1_base]/DSSRequest
ODA_FHIR_API <-- ODA1: DSSResponse
ODA_FHIR_API -> ODA_FHIR_API: generate CarePlan (include QuestionnaireResponse as a CarePlan.support reference)
ODA_WEB_UI <-- ODA_FHIR_API: HTTP 200 OK [CarePlan]

ODA_WEB_UI -> ODA_WEB_UI: View/Edit/Confirm/Cancel CarePlan
ODA_WEB_UI -> ODA_FHIR_API: POST [oda-fhir-base]/CarePlan
ODA_FHIR_API -> ODA_PHR: POST [phr-fhir-base]/CarePlan
ODA_FHIR_API <-- ODA_PHR: HTTP 201 Created, Location: [phr-fhir-base]]/CarePlan/[id]/_history/[vid]
ODA_FHIR_API -> ODA_PHR: POST [phr-fhir-base]/QuestionnaireResponse
ODA_FHIR_API <- ODA_PHR: HTTP 201 Created, Location: [phr-fhir-base]/QuestionnaireResponse/[id]/_history/[vid]
ODA_FHIR_API -> ODA_FHIR_API: Generate Observations
ODA_FHIR_API -> ODA_PHR: POST [phr-fhir-base]/?_format=transaction [Bundle - collection of observations]
ODA_FHIR_API <- ODA_PHR: HTTP 200 OK [Bundle - collection of observations]
ODA_WEB_UI <- ODA_FHIR_API: HTTP 201 Created, Location: [phr-fhir-base]/CarePlan/[id]/_history/[vid]
@enduml