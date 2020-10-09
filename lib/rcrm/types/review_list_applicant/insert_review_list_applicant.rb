require_relative 'review_list_applicant'

module RCRM
  class InsertReviewListApplicant < ReviewListApplicant
    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end

    def type_name
      :insertReviewListApplicant
    end
  end
end
