module RCRM
  class InsertObjectAttributeInput < Input
    valid_fields = %i(
      attributeId
      attributeMasterId
      description
      effectiveDate
      expiryDate
      grade
      gradedDescription
      notes
      objectAttributeId
      objectId
    )
  end
end
