require_relative 'applicant_custom_field'

module RCRM
  class InsertApplicantCustomField < ApplicantCustomField
    self.type_name = 'insertApplicantCustomField'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
