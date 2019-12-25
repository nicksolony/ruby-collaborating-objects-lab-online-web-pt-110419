class Song
  
  attr_accessor :name, :artist
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name=(name)
    #if (self.artist.nil?)
      #self.artist = Artist.new(name)
       self.artist = Artist.find_or_create_by_name(name)
       artist.add_song(self)
    #else
    #  self.artist.name = name
    #end
  end
  
  def self.name
    @name
  end
  
  
  def self.new_by_filename (filename)
    
    song = self.new(filename.split(" - ")[1])
    song.name = filename.split(" - ")[1]
    song.artist_name = filename.split(" - ")[0]
    song
  end
    

end