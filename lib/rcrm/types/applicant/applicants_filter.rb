require 'time'

module RCRM
  class ApplicantsFilter < Filter
    def updated_since(time)
      where updatedOn_gt: time
    end

    def email_address_eq(email)
      where primaryEmailAddress: email
    end

    def id_in(*ids)
      where applicantId_in: ids.flatten.compact
    end

    def surname_in(*surnames)
      where applicantSurname_in: surnames.flatten.compact
    end

    def name_in(*names)
      where applicantName_in: names.flatten.compact
    end
  end
end
