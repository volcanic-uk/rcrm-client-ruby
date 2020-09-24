module RCRM
  class ObjectAttribute < Selection
    self.valid_fields = %i(
      applicants
      attribute
      attributeId
      attributeMaster
      attributeMasterId
      clients
      description
      effectiveDate
      expiryDate
      grade
      gradedDescription
      notes
      objectAttributeId
      objectId
    )

    def default_fields
      # objectId is the applicantId
      %i(objectAttributeId objectId description attributeMasterId)
    end
  end
end
