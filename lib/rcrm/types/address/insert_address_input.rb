module RCRM
  class InsertAddressInput < Input
    self.valid_fields = %i(
      objectId
      addressTypeId
      building
      street
      district
      city
      countyValueId
      countryValueId
      post_Code
      currentAddress
    )
  end
end
