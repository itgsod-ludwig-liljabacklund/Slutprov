class Seeder

  def self.seed!
    self.must
  end

  def self.must
    Must.create(name: 'Julmust', volume: 33, price: 12, krpercl: 12/33, manufacturer: 'Zeunerts', year: 2015)
    Must.create(name: 'Påskmust', volume: 50, price: 18, krpercl: 18/50, manufacturer: 'Apotekarnes', year: 2014)
    Must.create(name: 'Fulmust', volume: 50, price: 16, krpercl: 16/50, manufacturer: 'Stockmos', year: 2013)
    Must.create(name: 'Kraftmust', volume: 100, price: 25, krpercl: 25/100, manufacturer: 'Bjärnes', year: 2012)
    Must.create(name: 'Stelmust', volume: 33, price: 10, krpercl: 10/33, manufacturer: 'Apotekarnes', year: 2011)
  end

end