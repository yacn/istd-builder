require 'dm-core'
require 'dm-types'

# NOTE: Need to increment the row name="dbRev" before syncing.
# This seems to just be collection of name-value pairs of iStudiez preferences
module IStudiez
  class DbParam
    include DataMapper::Resource

    storage_names[:default] = 'db_params'

    property :name,     Text
    property :value,    Text
    property :is_local, Boolean
  end
end
