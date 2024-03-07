module RCRM
  class Phone < Selection
    def default_fields
      # objectId is the applicantId
      %i(phoneId objectID num communicationTypeId communicationTypeDescription)
    end

    def available_phones(conn)
      query = '{communicationTypes{communicationType{description communicationTypeId}}}'
      fields = conn.request(query).body.data.communicationTypes.communicationType
      fields.map { |field| ["Phone(#{field.description}", field.communicationTypeId.to_s] }
    end
  end
end
