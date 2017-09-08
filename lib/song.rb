class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << @name
  end

  def self.create
      return self.name
  end

  def save
    self.class.all << self
  end

end
