module RCRM
  class GdprConsentTypes < Collection
    def default_fields
      [GdprConsentType.new]
    end
  end
end

