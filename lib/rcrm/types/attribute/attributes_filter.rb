module RCRM
  class AttributesFilter < Filter
    def attribute_master_id_eq(id)
      where attributeMasterId: id
    end

    def description_eq(description)
      where description: description
    end
  end
end
