module RCRM
  class UpdateApplicantInput < Input
    valid_fields = %i(
      applicantId
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
