require 'time'

module RCRM
  class CVsFilter < Filter
    def updated_since(time)
      where updatedOn_gt: time
    end

    def applicant_id_in(ids)
      where applicantId_in: ids.flatten.compact
    end

    def id_in(*ids)
      where cVId_in: ids.flatten.compact
    end
  end
end
