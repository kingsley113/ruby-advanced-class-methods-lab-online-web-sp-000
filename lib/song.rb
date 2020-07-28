class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def save
    self.class.all << self
  end

  def self.create(song)
    song = Song.new.save
    song
  end




end
