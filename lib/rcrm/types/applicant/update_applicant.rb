require_relative 'applicant'

module RCRM
  class UpdateApplicant < Applicant
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end

    def type_name
      :updateApplicant
    end
  end
end
