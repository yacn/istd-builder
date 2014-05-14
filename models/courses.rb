require_relative 'istudiez'

module IStudiez
  class Course
    include IStudiez::SyncdTbl
    storage_names[:default] = 'courses'

    property :uid, Serial

    property :final_grade,     Decimal
    property :name,            Text
    property :courseID,        Text
    property :use_grades,      Boolean
    property :order_index,     Integer
    property :has_final_grade, Boolean
    property :has_credits,     Boolean
    property :semester_uid,    Integer
    property :color_index,     Integer
    property :credits,         Decimal
  end
end
