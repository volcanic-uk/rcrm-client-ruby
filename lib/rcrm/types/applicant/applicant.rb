module RCRM
  class Applicant < Selection
    valid_fields = %i(
      addresses
      applicantActions
      applicantId
      applicantName
      applicantSurname
      attributes
      availableDate
      consultantGroups
      consultantUsers
      createdOn
      createdUserId
      createdUserName
      currenBasic
      cvs
      fileAs
      flagText
      formUrl
      gdprConsents
      gender
      genderValueId
      imageUrl
      jobTitle
      locationDescription
      maritalStatus
      maritalStatusValueId
      minBasic
      minPackage
      notebookItems
      personId
      phones
      primaryEmailAddress
      priority
      priorityValueId
      sectorIdCsv
      source
      sourceId
      status
      statusId
      title
      titleValueId
      updatedOn
      updatedUserId
      updatedUserName
      workHistories
    )

    def default_fields
      %i(applicantId applicantName applicantSurname fileAs primaryEmailAddress)
    end
  end
end
