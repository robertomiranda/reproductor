require "spec_helper"

describe SongList do
  it "should create a new songList without params"do
    song_list = SongList.new
    song_list.should_not be_nil    
  end
  
  it "should add a new song into Song List" do
    song_list = SongList.new
    song_list.add(Song.new("algo"))
    song_list.songs.size.should == 1 
  end
  
  it "should remove song from Song List" do
    song = Song.new("algo")
    
    song_list = SongList.new
    song_list.add(song)
    song_list.remove(song)
    song_list.songs.size.should == 0     
  end
end