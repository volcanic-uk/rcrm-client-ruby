module RCRM
  class InsertObjectAttributeInput < Input
    valid_fields = %i(
      attributeId
      effectiveDate
      expiryDate
      grade
      notes
      objectId
    )
  end
end
