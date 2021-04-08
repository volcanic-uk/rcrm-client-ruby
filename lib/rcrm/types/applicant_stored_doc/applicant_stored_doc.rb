module RCRM
  class ApplicantStoredDoc < Selection
    def default_fields
      %i(applicantId templateID fileExtension)
    end
  end
end
