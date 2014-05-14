require_relative 'istudiez'

module IStudiez
  class Exam
    include IStudiez::SyncdTbl
    storage_names[:default] = 'exams'

    property :uid, Serial

    property :building,               Text
    property :notes,                  Text
    property :completion_day,         Integer
    property :weight_uid,             Integer
    property :complete,               Boolean
    property :address,                Text
    property :date,                   Integer
    property :time_duration,          Integer
    property :title,                  Text
    property :room,                   Text
    property :earned_points,          Decimal
    property :course_uid,             Integer
    property :total_points,           Decimal
    property :time_offset,            Integer
    property :completion_time_offset, Integer
    property :all_day,                Boolean
    property :url,                    Text
  end
end
