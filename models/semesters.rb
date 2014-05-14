require_relative 'istudiez'

module IStudiez
  class Semester
    include IStudiez::SyncdTbl
    storage_names[:default] = 'semesters'

    property :uid, Serial

    property :name,       Text
    property :start_date, Integer
    property :hidden,     Boolean
    property :duration,   Integer
  end
end
