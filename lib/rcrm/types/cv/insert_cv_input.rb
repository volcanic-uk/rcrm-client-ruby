module RCRM
  class InsertCVInput < Input
    self.valid_fields = %i(
      sectorId
      applicantId
      publish
      description
      externalEditorOnly
      sourceId
      binaryContent
      fileExtension
    )
  end
end
