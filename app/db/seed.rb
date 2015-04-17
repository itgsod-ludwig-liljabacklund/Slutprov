class Seeder

  def self.seed!
    self.must
    self.recensioner
    self.affarer
    self.affarmusts
  end

  def self.must
    Must.create(name: 'Julmust', volume: 33, price: 12, manufacturer: 'Zeunerts', year: 2015, img: '/img/must.png', container: 'Glas')
    Must.create(name: 'Påskmust', volume: 50, price: 18, manufacturer: 'Apotekarnes', year: 2014, img: '/img/must.png', container: 'Burk')
    Must.create(name: 'Fulmust', volume: 50, price: 16, manufacturer: 'Stockmos', year: 2013, img: '/img/must.png', container: 'Burk')
    Must.create(name: 'Kraftmust', volume: 100, price: 25, manufacturer: 'Bjärnes', year: 2012, img: '/img/must.png', container: 'Glas')
    Must.create(name: 'Stelmust', volume: 33, price: 10, manufacturer: 'Apotekarnes', year: 2011, img: '/img/must.png', container: 'Glas')
  end

  def self.recensioner
    Recension.create(name: 'Lisa', content: 'Mycket god', rating: 5, must_id: 1)
    Recension.create(name: 'Sten', content: 'Nä nu jävlar', rating: 1, must_id: 1)
    Recension.create(name: 'Olle', content: 'Besviken', rating: 2, must_id: 1)
  end

  def self.affarer
    Affar.create(name: 'Ica')
    Affar.create(name: 'Coop')
    Affar.create(name: 'Pulsen')
  end

  def self.affarmusts
    AffarMust.create(affar_id: 1, must_id: 1, price: 12)
    AffarMust.create(affar_id: 1, must_id: 2, price: 14)
    AffarMust.create(affar_id: 2, must_id: 3, price: 16)
    AffarMust.create(affar_id: 2, must_id: 4, price: 18)
    AffarMust.create(affar_id: 3, must_id: 5, price: 12)
    AffarMust.create(affar_id: 3, must_id: 1, price: 19)
  end

end