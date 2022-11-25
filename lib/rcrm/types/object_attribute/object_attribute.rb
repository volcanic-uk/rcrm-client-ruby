module RCRM
  class ObjectAttribute < Selection
    self.valid_fields = %i(
      applicants
      attribute
      attributeId
      attributeMaster
      attributeMasterId
      clients
      createdOn
      createdUserId
      description
      effectiveDate
      expiryDate
      grade
      gradedDescription
      notes
      objectAttributeId
      objectId
      updatedOn
    )

    def default_fields
      # objectId is the applicantId
      %i(objectAttributeId objectId description attributeMasterId)
    end
  end
end
