module RCRM
  class Phone < Selection
    def default_fields
      # objectId is the applicantId
      %i(phoneId objectID num communicationTypeId communicationTypeDescription)
    end
  end
end
