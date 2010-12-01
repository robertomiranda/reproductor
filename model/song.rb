class Song

  attr_accessor :path ,:artist, :title, :length, :album, :tracknum
  
  def initialize(path)
    @path = path
  end
  
  def play
    system("mpg123 #{@path}")
  end
  
  def to_s
    return "title: #{@title} artist: #{@artist} album: #{album}"
  end
  
end
