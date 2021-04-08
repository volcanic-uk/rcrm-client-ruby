module RCRM
  class ApplicantStoredDocs < Collection
    def default_fields
      [ApplicantStoredDoc.new]
    end
  end
end

