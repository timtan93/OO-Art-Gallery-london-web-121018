class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist  == self}
  end

  def galleries
    paintings.collect {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.collect {|gallery| gallery.city}
  end

  def self.experience_array
    exp_array = Artist.all.collect {|artist| artist.years_experience}
    exp_array
  end

  def self.total_experience
    sum = 0
    self.experience_array.each {|x| sum += x}
    sum
  end

  def num_of_paintings
    self.paintings.length
  end

  def ratio
    ratio = self.num_of_paintings/self.years_experience.to_f
    ratio
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.ratio }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
