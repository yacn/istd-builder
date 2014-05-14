require_relative 'istudiez'

module IStudiez
  class ClassTypeTemplate
    include IStudiez::SyncdTbl

    storage_names[:default] = 'classTypeTemplates'

    property :uid,  Serial 
    property :name, Text
  end
end
