require_relative 'gdpr_consent'

module RCRM
  class UpdateGdprConsent < GdprConsent
    self.type_name = 'updateGdprConsent'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
