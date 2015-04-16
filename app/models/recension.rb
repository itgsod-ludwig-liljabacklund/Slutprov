class Recension
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :content, Text, :required => true
  property :rating, Integer, :required => true

  belongs_to :must
end