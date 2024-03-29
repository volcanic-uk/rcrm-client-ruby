require 'time'

module RCRM
  class PhonesFilter < Filter
    def object_id_in(ids)
      where objectID_in: ids.flatten.compact
    end

    def applicant_id_eql(id)
      where objectID: id
    end

    def appicant_id_in(ids)
      where objectID_in: ids.flatten.compact
    end

    def id_in(*ids)
      where phoneId_in: ids.flatten.compact
    end

    def num_equal(num)
      where num: num
    end

    def communication_type_id_eql(id)
      where communicationTypeId: id
    end
  end
end
