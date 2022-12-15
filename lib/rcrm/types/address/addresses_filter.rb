require 'time'

module RCRM
  class AddressesFilter < Filter
    def applicant_id(id)
      where objectId: id
    end
  end
end
