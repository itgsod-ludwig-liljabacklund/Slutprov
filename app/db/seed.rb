class Seeder

  def self.seed!
    self.must
    self.recensioner
  end

  def self.must
    Must.create(name: 'Julmust', volume: 33, price: 12, krpercl: 12/33, manufacturer: 'Zeunerts', year: 2015, img: '/img/must.png')
    Must.create(name: 'Påskmust', volume: 50, price: 18, krpercl: 18/50, manufacturer: 'Apotekarnes', year: 2014, img: '/img/must.png')
    Must.create(name: 'Fulmust', volume: 50, price: 16, krpercl: 16/50, manufacturer: 'Stockmos', year: 2013, img: '/img/must.png')
    Must.create(name: 'Kraftmust', volume: 100, price: 25, krpercl: 25/100, manufacturer: 'Bjärnes', year: 2012, img: '/img/must.png')
    Must.create(name: 'Stelmust', volume: 33, price: 10, krpercl: 10/33, manufacturer: 'Apotekarnes', year: 2011, img: '/img/must.png')
  end

  def self.recensioner
    Recension.create(name: 'Lisa', content: 'Mycket god', rating: 5, must_id: 1)
    Recension.create(name: 'Sten', content: 'Nä nu jävlar', rating: 1, must_id: 1)
    Recension.create(name: 'Olle', content: 'Besviken', rating: 2, must_id: 1)
  end

end