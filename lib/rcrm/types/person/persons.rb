module RCRM
  class Persons < Collection
    def default_fields
      [Person.new]
    end
  end
end
