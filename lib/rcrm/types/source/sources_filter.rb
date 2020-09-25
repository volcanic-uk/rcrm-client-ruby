module RCRM
  class SourcesFilter < Filter
    def source_id_eq(id)
      where sourceId: id.to_i
    end
  end
end
