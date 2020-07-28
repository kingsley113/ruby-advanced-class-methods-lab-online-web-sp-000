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

  def self.create
    self = Song.new



  end




end
