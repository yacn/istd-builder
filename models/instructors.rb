require_relative 'istudiez'

module IStudiez
  class Instructor
    include IStudiez::SyncdTbl
    storage_names[:default] = 'instructors'

    property :uid, Serial

    property :title,        Text
    property :emails,       Text
    property :pages,        Text
    property :phones,       Text
    property :name,         Text
    property :office_hours, Text
    property :company,      Text
    property :image_data,   Binary # TODO: Figure out what "BLOB" type maps to
    property :department,   Text
  end
end
