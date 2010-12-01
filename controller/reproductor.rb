require "rubygems"
require "audioinfo"
require "../model/song"
require "../model/song_list"

class Reproductor
  
  private_class_method :new
  @@reproductor=nil
  
  def initialize
    @songlist = SongList.new 
    caragarlista    
  end
  
  def Reproductor.create
    @@reproductor = new unless @@reproductor
    @@reproductor
  end
  
  def play_song(i)
    @songlist.songs[i].play
  end
    
   def mostrarlista()
      k = 0
      for i in @songlist.songs
        k+=1
        puts "#{k}) "+i.to_s 
      end
    end
  
    private 
    def caragarlista
      content = File.read(File.join(File.dirname(__FILE__), "list.txt"))
      v = content.split("\n")
      
      for i in v        
        
        song = Song.new(i)        
        
        
        AudioInfo.open(i) do |audio|
          song.artist = audio.artist
          song.title = audio.title
          song.album = audio.album          
          song.tracknum = audio.tracknum
        end
       @songlist.add(song)
      end
      
    end
  
end