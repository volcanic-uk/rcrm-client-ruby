module RCRM
  class AttributeMaster < Selection
    self.valid_fields = %i(
      allowApplicant
      allowClient
      allowContact
      attributeMasterId
      attributes
      description
      grades
      imageUrl
      parentAttributeMasterId
      sectorIdCsv
      systemCode
    )

    def default_fields
      %i(attributeMasterId description)
    end
  end
end
