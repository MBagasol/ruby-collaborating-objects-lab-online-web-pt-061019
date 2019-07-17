class Song
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all 
    @@all
  end
 
 def artist_name=(name)
   if self.artist.nil?
     self.artist = Artist.new(name)
   else
     self.artist.name = name 
   end
 end
 
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    new_song = self.new(song) 
   
  end
  
end
  
  
