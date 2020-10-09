module RCRM
  class ReviewListApplicants < Collection
    def default_fields
      [ReviewListApplicant.new]
    end
  end
end
