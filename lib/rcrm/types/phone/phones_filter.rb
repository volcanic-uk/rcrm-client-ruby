require 'time'

module RCRM
  class PhonesFilter < Filter
    def object_id_in(ids)
      where objectId_in: ids.flatten.compact
    end

    def appicant_id_in(ids)
      where objectId_in: ids.flatten.compact
    end

    def id_in(*ids)
      where phoneId_in: ids.flatten.compact
    end

    def num_equal(num)
      where num: num
    end
  end
end
