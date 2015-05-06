class Recension
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :user_id, Integer, :required => true
  property :content, Text, :required => true
  property :rating, Integer, :required => true

  belongs_to :must

  def self.post(params, id, app)
    user = User.first(email: app.session[:email])
    Recension.create(name: user.name,
                     user_id: user.id,
                     content: params['reviewcontent'],
                     rating: params['rating'],
                     must_id: id)
  end
end