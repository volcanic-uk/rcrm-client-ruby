module RCRM
  class Applicants < Selection
    include Collection

    def default_fields
      [Applicant.new]
    end

    def type_name
      :applicants
    end
  end
end
