require_relative 'applicant_custom_field'

module RCRM
  class UpdateApplicantCustomField < ApplicantCustomField
    self.type_name = 'updateApplicantCustomField'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
