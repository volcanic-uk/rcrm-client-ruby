require 'time'

module RCRM
  class PersonsFilter < Filter
    def id_eq(id)
      where personID: id
    end

    def id_in(*ids)
      where personId_in: ids.flatten.compact
    end

    def name_in(*names)
      where personName_in: names.flatten.compact
    end

    def surname_in(*surnames)
      where personSurname_in: surnames.flatten.compact
    end

    def email_address_eq(email)
      where primaryEmailAddress: email
    end
  end
end
