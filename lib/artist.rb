class Artist 
  
  attr_accessor :name, :songs, :all
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)
end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def self.create_by_name(name)
    #Artist.new(name) - need to find what code would work with this to save
    self.new(name).tap {|artist| artist.save}
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
  

end 
