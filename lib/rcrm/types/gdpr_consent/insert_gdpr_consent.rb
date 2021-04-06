require_relative 'gdpr_consent'

module RCRM
  class InsertGdprConsent < GdprConsent
    self.type_name = 'insertGdprConsent'

    def initialize(input, fields: nil)
      super fields: fields, arguments: Arguments.new.input(input)
    end
  end
end
