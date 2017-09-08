class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << self.name
  end


end
