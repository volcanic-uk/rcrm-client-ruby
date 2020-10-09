module RCRM
  class ReviewListApplicant < Selection
    self.valid_fields = %i(
      applicantId
      clientId
      company
      cvId
      employmentTypeSystemCode
      formUrl
      jobId
      jobRefNo
      jobStatus
      jobTitle
      notes
      reviewListApplicantId
      reviewListId
      reviewListStatus
      reviewListStatusId
      source
      sourceId
    )

    def default_fields
      %i(reviewListApplicantId applicantId clientId cvId jobId reviewListId sourceId)
    end
  end
end
