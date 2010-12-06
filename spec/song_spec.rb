require "spec_helper"

describe Song do
  
  it "should create a new song with a path"do
    song = Song.new("algo")
    song.should_not be_nil
  end
  
  it "should not create a new song without path" do
    lambda { song = Song.new(nil) }.should raise_error    
  end
  
  it "should read audio info from file" do
    song = Song.new("/home/roberto/Desktop/My_Shared_Folder/ellamecautivo.mp3")
    song.read_info
    song.artist.should_not be_nil
    song.title.should_not be_nil
  end
  
  it "shouldn't read audio from file if path is incorrect" do
    song = Song.new("algo")
    lambda { song.read_info}.should raise_error    
    song.artist.should be_nil
  end
  
  it "should return song info formated" do
    song = Song.new("/path/to/file")
    song.artist = "Unknown Artist"
    song.title = "Track 1"
    song.album = "Album 1"
    song.to_s.should == "title: Track 1 artist: Unknown Artist album: Album 1"
  end
  
end