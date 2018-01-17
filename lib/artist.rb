require 'pry'
class Artist
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@song_count = 0
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    binding.pry
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end


end
