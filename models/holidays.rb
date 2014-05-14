require_relative 'istudiez'

module IStudiez
  class Holiday
    include IStudiez::SyncdTbl
    storage_names[:default] = 'holidays'

    property :uid, Serial

    property :name,           Text
    property :shift_schedule, Boolean
    property :start_date,     Integer
    property :duration,       Integer
  end
end
