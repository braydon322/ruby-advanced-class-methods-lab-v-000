class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def self.create(name)
      name = self.new
  end

  def save
    self.class.all << self
  end

end
