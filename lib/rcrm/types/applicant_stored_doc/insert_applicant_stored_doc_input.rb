module RCRM
  class InsertApplicantStoredDocInput < Input
    self.valid_fields = %i(
      applicantId
      binaryContent
      expiryDate
      fileExtension
      startDate
      templateName
      templateTypeId
    )
  end
end
