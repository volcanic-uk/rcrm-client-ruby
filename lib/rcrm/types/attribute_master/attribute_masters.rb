module RCRM
  class AttributeMasters < Collection
    def default_fields
      [AttributeMaster.new]
    end
  end
end
