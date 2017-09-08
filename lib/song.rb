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
    @@all << self
  end

  def self.new_by_name(name)
    self.new(name)
  end

  def self.create_by_name(name)
    self.new(name)
  end

  def self.alphabetical
    @@all.sort
  end

  def self.new_from_filename(file_name)
    split_array = file_name.split(/[-\.]/)
    split_array.each do |value|
      split_array_no_whitespace = value.split(" ")
    binding.pry
    @name = split_array[1]
    self.new(@name)
  end

  def self.create_from_filename(file_name)
    self.new(name)
  end

  def self.destroy_all
    @@all.clear
  end


end
