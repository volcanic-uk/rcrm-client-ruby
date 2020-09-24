module RCRM
  class ObjectAttributes < Collection
    def default_fields
      [ObjectAttribute.new]
    end
  end
end
