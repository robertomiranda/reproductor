require "rubygems"
require "audioinfo"

class Song

  attr_accessor :path ,:artist, :title, :length, :album, :tracknum
  
  def initialize(path)
    @path = path
  end
  
  def read_info
    AudioInfo.open(@path) do |audio|
      @artist = audio.artist
      @title = audio.title
      @album = audio.album          
      @tracknum = audio.tracknum
    end
  end
  
  def play
    system("mpg123 #{@path}")
  end
  
  def to_s
    return "title: #{@title} artist: #{@artist} album: #{album}"
  end
  
end
