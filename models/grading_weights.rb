require_relative 'istudiez'

module IStudiez
  class GradingWeight
    include IStudiez::SyncdTbl
    storage_names[:default] = 'gradingWeights'

    property :uid, Serial

    property :value,      Decimal
    property :name,       Text
    property :course_uid, Integer
  end
end
