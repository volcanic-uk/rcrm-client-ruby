module RCRM
  class InsertApplicantInput < Input
    valid_fields = %i(
      availableDate
      statusId
      priorityValueId
      jobTitle
      minBasic
      currentBasic
      minPackage
      currentPackage
      sourceId
      applicantName
      applicantSurname
      createdUserId
      createdUserName
      updatedUserId
      updatedUserName
      genderValueId
      maritalStatusValueId
      titleValueId
      sectorIdCsv
      fileAs
      flagText
    )
  end
end
