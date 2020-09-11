module RCRM
  class InsertPhoneInput < Input
    valid_fields = %i(
      objectID
      num
      communicationTypeId
      communicationTypeDescription
      gDPR
      comments
    )
  end
end
