class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def total_price
    painting = Painting.all.select {|painting| painting == self }
    painting.collect {|painting| painting.price }
  end

end
