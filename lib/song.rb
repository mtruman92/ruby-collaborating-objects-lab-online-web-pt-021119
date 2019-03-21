class Song

 attr_accessor :artist, :name

 def initialize(name)
    @name = name
 end

 def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    newSong = self.new(song)
    artist = filename.split(" - ")[0]
    newSong.artist_name = artist
   end

def artist_name=(name)
   artist = Artist.find_or_create_by_name(name)
   self.artist = artist
   artist.add_song(self)
end





 
  
newSong

  
end
