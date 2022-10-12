module RCRM
  class ApplicantCustomField < Selection
    self.valid_fields = %i(
      applicantID
      passport
    )

    def get_remote_applicant_custom_fields
      query = '{__type(name: "applicantCustomField"){fields {name}}}'
      fields = Connection.connection.request(query).body.data.__type.fields
      fields.map(&:name)
    end
  end
end
