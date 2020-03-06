class Artist
attr_accessor :name
@@all = [] #stores all instances of Artist class

def initialize(name)
  @name = name
  @songs = []  #puts instances of songs into empty array?
end

def add_song(song)
  self.songs << song #Artist.songs reader? returns songs hopefully
end

def save
  @@all << self #saves instances of Artist in @@all variable
end

def songs
  song.all.select{|song| song.artist = self}
end

  def self.all
    @@all
  end

  end
