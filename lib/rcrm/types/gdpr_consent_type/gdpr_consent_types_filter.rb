module RCRM
  class GdprConsentTypesFilter < Filter
    def gdpr_consent_type_id_eq(id)
      where gDPRConsentTypeId: id.to_i
    end
  end
end
