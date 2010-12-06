class SongList
  
  attr_accessor :songs
  
  def initialize
    @songs = []
  end
  
  def add(song)
    @songs.push(song)
  end
  
  def remove(song)
    @songs.delete(song) 
  end
    
end