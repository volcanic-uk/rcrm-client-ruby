module RCRM
  class UpdateGdprConsentInput < Input
    self.valid_fields = %i(
      gDPRConsentId
      consentDateUtc
      consentExpiryDateUtc
    )
  end
end
