module RCRM
  class Applicant < Selection
    self.valid_fields = %i(
      addressId
      addressType
      addressTypeId
      building
      city
      country
      countryValueId
      county
      countyValueId
      currentAddress
      district
      objectId
      post_Code
      street
    )

    def default_fields
      %i(addressId addressTypeId post_Code)
    end
  end
end
