require_relative 'applicant'

module RCRM
  class InsertApplicant < Applicant
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end

    def type_name
      :insertApplicant
    end
  end
end
