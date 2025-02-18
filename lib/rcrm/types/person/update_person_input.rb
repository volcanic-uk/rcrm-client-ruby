module RCRM
  class UpdatePersonInput < Input
    self.valid_fields = %i(
      personID
      personName
      surname
      titleValueId
      salutation
      dob
      genderValueId
      maritalStatusValueId
      nationalityId
      notes
      fileAs
      flagText
      sectorIdCsv
      primaryPhoneId
      primaryEmailAddressPhoneId
    )
  end
end
