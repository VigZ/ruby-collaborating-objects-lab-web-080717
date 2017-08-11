require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
    new_song = Song.new(file.split(" - ")[1])
    artist_name = file.split(" - ")[0]
    new_artist= Artist.find_or_create_by_name(artist_name)
    new_song.artist = new_artist
    new_song
  end
end
