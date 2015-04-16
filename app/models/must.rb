class Must
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :volume, Integer, :required => true
  property :price, Integer, :required => true
  property :krpercl, Integer, :required => true
  property :manufacturer, String, :required => true
  property :year, Integer, :required => true
  property :img, Text

  has n, :recension

  def get_reviews
    return Recension.all(must: self)
  end
end