module RCRM
  class JobsFilter < Filter
    def id_eq(id)
      where jobId: id
    end

    def id_in(*ids)
      where jobId_in: ids.flatten.compact
    end

    def job_ref_eq(ref)
      where jobRefNo: ref
    end
  end
end
