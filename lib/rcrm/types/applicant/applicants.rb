module RCRM
  class Applicants < Collection
    def default_fields
      [Applicant.new]
    end
  end
end
