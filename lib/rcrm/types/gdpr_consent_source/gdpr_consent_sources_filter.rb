module RCRM
  class GdprConsentSourcesFilter < Filter
    def gdpr_consent_type_id_eq(id)
      where gDPRConsentSourceId: id.to_i
    end
  end
end
