module RCRM
  class Person < Selection
    self.valid_fields = %i(
      addresses
      createdOn
      createdUserId
      createdUserName
      dob
      fileAs
      flagText
      formUrl
      gender
      genderValueId
      imageUrl
      maritalStatus
      maritalStatusValueId
      nationality
      nationalityId
      notes
      personID
      personName
      phones
      primaryEmailAddress
      primaryEmailAddressPhoneId
      primaryPhoneId
      salutation
      sectorIdCsv
      surname
      titleValueId
      updatedOn
      updatedUserId
      updatedUserName
    )
  end
end
