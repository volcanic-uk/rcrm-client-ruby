module RCRM
  class ApplicantCustomFields < Collection
    def default_fields
      [ApplicantCustomField.new]
    end
  end
end
