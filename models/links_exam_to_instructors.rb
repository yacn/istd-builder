require_relative 'istudiez'

# TODO: Figure out if this M2M-mapping table needed
module IStudiez
  class LinksExamToInstructor
    include IStudiez::SyncdTbl
    storage_names[:default] = 'links_exam_to_instructors'

    property :uid, Serial

    property :exam_uid,       Integer
    property :instructor_uid, Integer
  end
end
