class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  @@count = 0
  @@artist = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@artist << artist
    @genre = genre
    @@genres << genre
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
    Song.all.map {|song| song.artist}.uniq
  end 
  
  def self.genres 
    
  end 

end
  