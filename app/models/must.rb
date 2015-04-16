class Must
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :volume, Integer, :required => true
  property :price, Integer, :required => true
  property :manufacturer, String, :required => true
  property :year, Integer, :required => true
  property :img, Text

  has n, :recension
  has n, :affar, :through => :affarmusts

  def get_reviews
    return Recension.all(must: self)
  end

  def average_rating
    return ((Recension.all(must: self)).avg(:rating)).round(2)
  end

  def lowest_price
    return AffarMust.min(:price, :must_id => self.id)
  end
end