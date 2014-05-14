require_relative 'istudiez'

module IStudiez
  class Assignment
    include IStudiez::SyncdTbl

    storage_names[:default] = 'assignments'

    property :uid, Serial

    property :notification_day,  Integer
    property :notes,             Text
    property :due_date,          Integer
    property :completion_day,    Integer
    property :weight_uid,        Integer
    property :complete,          Boolean
    property :partners,          Text
    property :notification_uid,  Text
    property :priority,          Integer
    property :earned_points,     Decimal
    property :notification_time, Decimal
    property :course_uid,        Integer
    property :notify,            Boolean
    property :total_points,      Decimal
    property :name,              Text

    property :completion_time_offset, Integer
  end
end
