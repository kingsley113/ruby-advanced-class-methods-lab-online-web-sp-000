require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(song)
    @name = song[0]
    @artist_name = song[1]
  end

  def save
    self.class.all << self
  end

  def self.create
    Song.new(self)
    binding.pry



  end




end
