require 'dm-core'
require 'dm-types'

module IStudiez
  # TODO: Or at least I believe that's what these fields are used for
  module SyncdTbl
    def self.included(includer)
      includer.class_eval do
        include DataMapper::Resource
        property :is_new, DataMapper::Property::Boolean
        property :is_local, DataMapper::Property::Boolean
        property :DEL, DataMapper::Property::Boolean
        property :server_uid, DataMapper::Property::Integer
        property :old_server_uid, DataMapper::Property::Integer
      end
    end
  end
end
