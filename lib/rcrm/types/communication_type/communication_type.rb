module RCRM
  class CommunicationType < Selection
    module SystemCode
      GENERIC_EMAIL = :COMM_TYP_EMAIL
      OFFICE_EMAIL = :COMM_TYP_OFFICE_EMAIL
      PERSONAL_EMAIL = :COMM_TYP_PERSONAL_EMAIL

      FAX = :COMM_TYP_FAX

      MOBILE = :COMM_TYP_MOBILE
      GENERIC_PHONE = :COMM_TYP_PHONE
      DAY_PHONE = :COMM_TYP_DAYPHONE
      EVENING_PHONE = :COMM_TYP_EVENPHONE
      HOME_PHONE = :COMM_TYP_HOME_PHONE
      WORK_PHONE = :COMM_TYP_OFFICE_PHONE

      EMAIL = [GENERIC_EMAIL, OFFICE_EMAIL, PERSONAL_EMAIL]
      PHONE = [MOBILE, GENERIC_PHONE, DAY_PHONE, EVENING_PHONE, HOME_PHONE, WORK_PHONE]
    end

    self.type_name = :communicationType

    def default_fields
      %i(communicationTypeId description systemCode)
    end
  end
end

