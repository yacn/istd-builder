require 'dm-core'
require 'dm-types'

# TODO: This seems to just be collection of OS X app's preferences, need
# to compare a data backup from iPhone, iPad vs OS X
module IStudiez
  class DbParam
    include DataMapper::Resource

    storage_names[:default] = 'db_params'

    property :name,     Text
    property :value,    Text
    property :is_local, Boolean
  end
end
