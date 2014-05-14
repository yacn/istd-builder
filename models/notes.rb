require_relative 'istudiez'

module IStudiez
  class Note
    include IStudiez::SyncdTbl
    storage_names[:default] = 'notes'

    property :uid, Serial

    property :event_uid, Integer
    property :content,   Text
  end
end
