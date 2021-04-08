require_relative 'applicant_stored_doc'

module RCRM
  class InsertApplicantStoredDoc < ApplicantStoredDoc
    self.type_name = 'insertApplicantStoredDoc'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
