module RCRM
  class InsertGdprConsentInput < Input
    self.valid_fields = %i(
      personId
      gDPRConsentTypeId
      consentDateUtc
      consentExpiryDateUtc
    )
  end
end
