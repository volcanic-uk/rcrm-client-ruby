module RCRM
  class CommunicationTypeFilter < RCRM::Filter
    def system_code_in(*codes)
      where systemCode_in: codes
    end

    def email
      system_code_in *CommunicationType::SystemCode::EMAIL
    end

    def phone
      system_code_in *CommunicationType::SystemCode::PHONE
    end
  end
end
