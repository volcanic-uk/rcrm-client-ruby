# RCRM Ruby Client

This a client library to help interacting with the RCRM API.

## Usage

First, download and install the gem.

### Querying the data

Then, to make a query and obtain the data you want, do something like:

```ruby
require 'rcrm'

# Create a client instance. Note that this will not necessarily maintain
# a connection between requests.... but don't assume that it closes it either!
conn = RCRM::Connection.new(url: RCRM_URL,
                            integrator_key: RCRM_INTEGRATOR_KEY,
                            api_key: RCRM_API_KEY)

# Next, build the query...
# First thing we want to do is create a filter object that we can use to reduce 
# the results to just those we are looking for. In this case, we're going to look
# for applicants with the given email address
applicants_filter = RCRM::ApplicantsFilter.new.email_address_eq('dave@lister.fj')

# Second, we need to identify what fields we want the API to return to us. The API is
# very powerful and allows for a lot of flexibility. By default, the client will automatically
# set a few fields to return, so this may not be needed.
applicant_return_fields = RCRM::Applicant.new(fields: [:applicantId, :applicantName, :applicantSurname])

# Third, construct the query to return the fields we want, filtering with the filters we created
applicants_query = RCRM::Applicants.new(fields: applicant_return_fields).filter(applicants_filter)

# Finally, make the request to the API
result = conn.query(applicants_query)

# If everything worked, the response status will be 200 and the JSON body will have no errors object.
result.status == 200 && result.body['errors'].nil?

# The data requested can now be found in the "data" item in the body
result.body['data']
```

### Inserting new data

```ruby
# Create the connection as before

# Find the sector ID(s) with which to associate the record
# in this example, we're going to associate the record with all of the sectors we find
result = conn.query RCRM::Sectors.new
sectorIdCsv = result.body['data']['sectors']['sector'].map { |item| item['sectorId'] }.join(',')

# Create an object representing the item to insert
applicant_details = RCRM::InsertApplicantInput.new(applicantName: 'Kryton',
  applicantSurname: '4000',
  fileAs: 'Kryten',
  sectorIdCsv: sectorIdCsv)

# Next, create a query of the correct type for the desired operation
insert_applicant_mutation = RCRM::InsertApplicant.new(applicant_details)

# Finally, send the mutation to the API
result = conn.mutation(insert_applicant_mutation)

# As before, if everything worked, the response status will be 200 and the JSON body
# will have no errors object. The results will be returned in the data section of the body
result.status == 200 && result.body['errors'].nil?
```

### Updating data

```ruby
# find the applicant's ID
applicants_filter = RCRM::ApplicantsFilter.new.name_in('Kryton').surname_in('4000')
result = conn.query(RCRM::Applicants.new.filter(applicants_filter))
applicant_id = result.body['data']['applicants']['applicant'].first['applicantId']

# prepare the request
applicant_details = RCRM::UpdateApplicantInput.new(applicantId: applicant_id, applicantSurname: 'Series 4000')
update_applicant_mutation = RCRM::UpdateApplicant.new(applicant_details, fields: [:applicantId, :applicantSurname])

result = conn.mutation(update_applicant_mutation)
```
