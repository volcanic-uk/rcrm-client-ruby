module RCRM
  class ReviewListApplicantsFilter < Filter
    def applicant_id(id)
      where applicantId: id
    end

    def job_id(id)
      where jobId: id
    end
  end
end
