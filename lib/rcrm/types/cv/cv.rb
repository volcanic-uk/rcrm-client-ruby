module RCRM
  class CV < Selection
    self.type_name = 'cv'

    def default_fields
      %i(applicantId cVId description fileExtension)
    end
  end
end
