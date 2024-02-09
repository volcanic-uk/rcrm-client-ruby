module RCRM
  class UpdatePhoneInput < Input
    valid_fields = %i(
      phoneId
      objectID
      communicationTypeId
      num
      numTrimmed
      comments
      communicationTypeDescription
      gDPR
    )
  end
end
