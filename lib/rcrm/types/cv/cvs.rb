module RCRM
  class CVs < Collection
    self.type_name = 'cvs'

    def default_fields
      [CV.new]
    end
  end
end

