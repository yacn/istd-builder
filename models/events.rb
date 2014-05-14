require_relative 'istudiez'

module IStudiez
  class Event
    include IStudiez::SyncdTbl
    storage_names[:default] = 'events'

    property :uid, Serial

    property :cancelled,      Boolean
    property :occurrence_uid, Integer
    property :day,            Integer
  end
end
