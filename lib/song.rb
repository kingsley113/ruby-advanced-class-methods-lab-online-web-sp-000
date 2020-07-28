class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize
    #@name = name
  end

  def save
    self.class.all << self
  end

  def self.create(name, artist_name)
    s = Song.new
    s.name = name
    s.artist_name = artist_name


  end




end
