require_relative 'istudiez'

module IStudiez
  class Occurrence
    include IStudiez::SyncdTbl
    storage_names[:default] = 'occurrences'

    property :uid, Serial

    property :building,         Text
    property :all_day,          Boolean
    property :start_date,       Integer
    property :address,          Text
    property :time_duration,    Integer
    property :room,             Text
    property :notification_uid, Text
    property :icon_identifier,  Text
    property :duration,         Integer
    property :weekdays,         Integer
    property :type_identifier,  Text
    property :course_uid,       Integer
    property :time_offset,      Integer
    property :repeat_units,     Integer
    property :repeats,          Integer
    property :url,              Text
  end
end
