require 'time'

module RCRM
  class ApplicantStoredDocsFilter < Filter
    def template_id_in(*ids)
      where templateId_in: ids.flatten.compact
    end

    def applicant_id_in(ids)
      where applicantId_in: ids.flatten.compact
    end
  end
end
