module RCRM
  class GdprConsents < Collection
    def default_fields
      [GdprConsent.new]
    end
  end
end

