require_relative 'istudiez'

# TODO: Figure out whether this M2M-mapping table is needed
module IStudiez
  class LinksOccurrenceToInstructor
    include IStudiez::SyncdTbl
    storage_names[:default] = 'links_occurrence_to_instructors'

    property :occurrence_uid, Integer
    property :instructor_uid, Integer
  end
end
