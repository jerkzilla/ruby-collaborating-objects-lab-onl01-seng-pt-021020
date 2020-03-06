class Artist
attr_accessor :name

@@all = []

def initialize(name)
  @name = name
end

def add_song(song)
  song.artist = self
end

def songs
  song.all.select{|song| song.artist = self}
end

  def self.all
    @@all
  end

  end
