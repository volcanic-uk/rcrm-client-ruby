module RCRM
  class GdprConsent < Selection
    self.valid_fields = %i(
      consentDateUtc
      consentExpiryDateUtc
      consentSourceSystemCode
      consentTypeSystemCode
      gDPRConsentId
      gdprConsentSource
      gDPRConsentSourceDescription
      gDPRConsentSourceId
      gdprConsentType
      gDPRConsentTypeDescription
      gDPRConsentTypeId
      personId
    )

    def default_fields
       %i(gDPRConsentId gDPRConsentSourceId gDPRConsentTypeId personId
        consentDateUtc consentExpiryDateUtc)
    end
  end
end
