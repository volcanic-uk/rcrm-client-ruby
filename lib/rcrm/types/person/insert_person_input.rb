module RCRM
  class InsertPersonInput < Input
    self.valid_fields = %i(
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
    )
  end
end
