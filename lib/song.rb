class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  @@count = 0
  @@artist = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    do_this @@artist << artist if @@artist.exclude?(artist)
    @genre = genre
    @@all << self
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    Song.all.map  |song|
      song.artist
    end 
  end
  
end