class Song
  
<<<<<<< HEAD
  attr_accessor :name, :artist
  @@all = []
  
  def initialize (name)
    @name = name
=======
  attr_accessor :title, :artist
  @@all = []
  
  def initialize (title)
    @title = title
>>>>>>> 4bf30980f30482608d8aa882764ff6d59e28a1ab
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name=(name)
<<<<<<< HEAD
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
=======
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.name
    @title
>>>>>>> 4bf30980f30482608d8aa882764ff6d59e28a1ab
  end
    

end