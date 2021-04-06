module RCRM
  class GdprConsentType < Selection
    def default_fields
       %i(description gDPRConsentTypeId systemCode)
    end
  end
end
