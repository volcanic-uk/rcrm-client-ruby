module RCRM
  class Attribute < Selection
    self.valid_fields = %i(
      attributeId
      attributeMasterId
      attributeMasterSystemCode
      description
      jobAttributes
      objectAttributes
    )

    def default_fields
      %i(attributeId attributeMasterId description)
    end
  end
end
