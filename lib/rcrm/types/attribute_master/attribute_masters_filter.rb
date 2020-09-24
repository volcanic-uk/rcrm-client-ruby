module RCRM
  class AttributeMastersFilter < Filter
    def id_in(*ids)
      where attributeMasterId_in: ids.flatten.compact
    end
    
    def allow_applicant
      where allowApplicant: 'Y'
    end
    
    def allow_client
      where allowClient: 'Y'
    end
    
    def allow_contact
      where allowContact: 'Y'
    end
  end
end
