class Artist
  require "pry"
  attr_accessor :name
  @@all = []
  @@artist_names = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all

    @@all

  end
  
  def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
   def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  
  
  def self.find_or_create_by_name(name)
   # binding.pry
    if self.find(name)
      self.find(name)
    else
      self.new (name)
    end
  
  end
  
  def print_songs
<<<<<<< HEAD
    songs.each {|song| puts song.name}
=======
    songs.each {|song| puts song.title}
>>>>>>> 4bf30980f30482608d8aa882764ff6d59e28a1ab
  end
  
  
end