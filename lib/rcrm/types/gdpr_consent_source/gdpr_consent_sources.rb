module RCRM
  class GdprConsentSources < Collection
    def default_fields
      [GdprConsentSource.new]
    end
  end
end

