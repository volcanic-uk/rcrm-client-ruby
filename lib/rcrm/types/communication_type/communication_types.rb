module RCRM
  class CommunicationTypes < Collection
    def default_fields
      [CommunicationType.new]
    end

    def email_only
      filter CommunicationTypeFilter.new.email
    end

    def phone_only
      filter CommunicationTypeFilter.new.phone
    end
  end
end

