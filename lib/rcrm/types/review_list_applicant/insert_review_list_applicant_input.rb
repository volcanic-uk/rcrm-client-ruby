module RCRM
  class InsertReviewListApplicantInput < Input
    valid_fields = %i(
      applicantId
      jobId
      reviewListStatusIdm
      employmentTypeSystemCode,
      jobTitle
    )
  end
end
