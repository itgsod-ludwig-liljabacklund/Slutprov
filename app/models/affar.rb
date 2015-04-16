class Affar
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true

  has n, :must, :through => :affarmusts
end