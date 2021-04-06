module RCRM
  class GdprConsentSource < Selection
    def default_fields
       %i(description gDPRConsentSourceId systemCode)
    end
  end
end
