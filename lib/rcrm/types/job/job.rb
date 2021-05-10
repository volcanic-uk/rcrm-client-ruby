module RCRM
  class Job < Selection
    self.valid_fields = %i(
      archived
      areaAttributeId
      clientContactId
      clientId
      company
      createdOn
      createdUserId
      employmentType
      employmentTypeId
      employmentTypeSystemCode
      interviewAddress
      jobId
      jobRefNo
      jobTitle
      noOfPlaces
      notes
      placementFee
      positionAttribute
      positionAttributeId
      primaryConsultant
      published
      publishedJobCategoryId
      publishedJobDescription
      salary
      sectorId
      sectorName
      startDate
      status
      statusDate
      statusId
      updatedOn
      updatedUserId
    )

    def default_fields
      %i(jobId jobRefNo jobTitle archived conpany published sectorId)
    end
  end
end
