module RCRM
  class InsertApplicantCustomFieldInput < Input
    self.valid_fields = %i(
      applicantID
      passport
    )
  end
end
