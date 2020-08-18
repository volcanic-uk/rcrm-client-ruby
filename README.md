# RCRM

This a client library to help interacting with the RCRM API.


```
require 'rcrm'

conn = RCRM::Connection.new(url: RCRM_URL,
                            integrator_key: RCRM_INTEGRATOR_KEY,
                            api_key: RCRM_API_KEY)

applicants_filter = RCRM::ApplicantsFilter.new.email_address_eq('dave@lister.fj')
applicant_return_fields = RCRM::Applicant.new(fields: [:applicantId, :applicantName])
applicants_query = RCRM::Applicants.new(fields: applicant_return_fields).filter(applicants_filter)

result = conn.query(applicants_query)
result.status == 200
result.body['errors'].nil?
result.body['data']
```

```
# find the sector ID
result = conn.query RCRM::Sectors.new
sectorIdCsv = result.body['data']['sectors']['sector'].map { |item| item['sectorId'] }.join(',')

# prepare the request
applicant_details = RCRM::InsertApplicantInput.new(applicantName: 'Kryton',
  applicantSurname: '4000',
  fileAs: 'Kryten',
  sectorIdCsv: sectorIdCsv)
insert_applicant_mutation = RCRM::InsertApplicant.new(applicant_details, fields: [:applicantId, :fileAs])

result = conn.mutation(insert_applicant_mutation)
```

```
# find the applicant's ID
applicants_filter = RCRM::ApplicantsFilter.new.name_in('Kryton').surname_in('4000')
result = conn.query(RCRM::Applicants.new.filter(applicants_filter))
applicant_id = result.body['data']['applicants']['applicant'].first['applicantId']

# prepare the request
applicant_details = RCRM::UpdateApplicantInput.new(applicantId: applicant_id, applicantSurname: 'Series 4000')
update_applicant_mutation = RCRM::UpdateApplicant.new(applicant_details, fields: [:applicantId, :applicantSurname])

result = conn.mutation(update_applicant_mutation)
```
