class Link
  include DataMapper::Resource

  # the use of Resource in place of a class name tells DataMapper to use an anonymous resource to link the two models up.
  has n, :tags, through: Resource

  property :id, Serial
  property :title, String
  property :url, String
end
