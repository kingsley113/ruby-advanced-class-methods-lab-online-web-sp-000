class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(song)
    Song.new(song).save
  end

  def initialize(name, artist)
    @name = name
    @artist = artist
  end


end
