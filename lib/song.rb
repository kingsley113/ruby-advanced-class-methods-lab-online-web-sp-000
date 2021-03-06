require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []


  def self.all
    @@all
  end


  def save
    self.class.all << self
  end


  def self.create
    song = self.new
    song.save
    song
  end


  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end


  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    song.save
    song
  end


  def self.find_by_name(name)
    self.all.find{|song_name| song_name.name == name}
  end


  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)
      self.find_by_name(song_name)
    else
      self.create_by_name(song_name)
    end
  end


  def self.alphabetical
    all.sort_by{|inst_name| inst_name.name}
  end


  def self.new_from_filename(filename)
    data = []
    filename.chomp!(".mp3")
    data = filename.split(" - ")
    song = self.new
    song.name = data[1]
    song.artist_name = data[0]
    song
  end


  def self.create_from_filename(filename)
    all << new_from_filename(filename)
  end


  def self.destroy_all
    @@all = []
  end

end
