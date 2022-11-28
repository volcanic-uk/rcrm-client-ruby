module RCRM
  class Addresses < Collection
    def default_fields
      [Address.new]
    end
  end
end
