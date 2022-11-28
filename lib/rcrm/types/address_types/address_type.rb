module RCRM
  class AddressType < Selection
    def default_fields
       %i(description AddressTypeId systemCode)
    end
  end
end
