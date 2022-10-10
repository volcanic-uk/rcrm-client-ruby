module RCRM
  class ApplicantCustomField < Selection
    self.valid_fields = get_remote_applicant_custom_fields

    def get_remote_applicant_custom_fields
      query = '{__type(name: "applicantCustomField"){fields {name}}}'
      fields = Connection.connection.request(query).body.data.__type.fields
      fields.map(&:name)
    end
  end
end
