require_relative 'istudiez'

module IStudiez
  class GradingScale
    include IStudiez::SyncdTbl
    storage_names[:default] = 'gradingScales'

    property :uid, Serial

    property :name,       Text
    property :min,        Decimal
    property :max,        Decimal
    property :course_uid, Integer
  end
end
