module RCRM
  class InsertApplicantStoredDocInput < Input
    self.valid_fields = %i(
      applicantId
      binaryContent
      fileExtension
      templateID
      templateName
      templateTypeId
    )
  end
end
