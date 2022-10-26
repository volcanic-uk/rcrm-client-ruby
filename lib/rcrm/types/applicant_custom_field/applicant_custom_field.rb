module RCRM
  class ApplicantCustomField < Selection
    def valid_fields(conn)
      query = '{__type(name: "applicantCustomField"){fields {name}}}'
      fields = conn.request(query).body.data.__type.fields
      fields.map(&:name).map(&:to_sym)
    end
  end 
end
