class Recension
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :content, Text, :required => true
  property :rating, Integer, :required => true

  belongs_to :must

  def self.post(params)
    Recension.create(name: params['name'],
                     content: params['reviewcontent'],
                     rating: params['rating'],
                     must_id: params['id'])
  end
end