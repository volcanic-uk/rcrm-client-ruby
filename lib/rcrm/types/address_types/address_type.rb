module RCRM
  class AddressType < Selection
    def default_fields
       %i(description addressTypeId systemCode)
    end
  end
end
