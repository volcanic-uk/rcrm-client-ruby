module RCRM
  class UpdateApplicantCustomFieldInput < Input
    self.valid_fields = %i(
      applicantID
      passport
    )
  end
end
