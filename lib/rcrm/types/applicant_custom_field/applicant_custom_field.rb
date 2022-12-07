module RCRM
  class ApplicantCustomField < Selection
    def valid_fields(conn)
      query = '{__type(name: "updateApplicantCustomField"){name fields{name type{name}}}}'
      output = {}
      conn.request(query).body.data.__type.fields.each { |field| output[field.name] = field.type.name }
      output
    end
  end 
end
