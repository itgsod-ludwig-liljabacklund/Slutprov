class AffarMust
  include DataMapper::Resource

  property :id, Serial
  property :price, Integer, :required => true

  belongs_to :affar
  belongs_to :must

  def affarsnamn
    return (Affar.first(id: self.affar_id)).name
  end
end