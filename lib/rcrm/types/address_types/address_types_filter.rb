module RCRM
  class AddressTypesFilter < Filter
    def address_type_id_eq(id)
      where AddressTypeId: id.to_i
    end
  end
end
