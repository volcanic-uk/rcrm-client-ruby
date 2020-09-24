module RCRM
  class ObjectAttributesFilter < Filter
    def object_id_in(*ids)
      where objectId_in: ids.flatten.compact
    end
  end
end
