# require 'dm-migrations'
require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

  # has n, :linktags
  has n, :tags, :through => Resource
end
