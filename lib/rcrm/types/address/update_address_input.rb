module RCRM
  class UpdateAddressInput < Input
    self.valid_fields = %i(
      addressId
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
