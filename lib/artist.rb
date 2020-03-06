require 'pry'

class Artist
attr_accessor :name, :songs
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

  def self.all #class meth all returns all instances of Artist
    @@all
    #binding.pry
  end

  def self.find_or_create_by_name(name) #find or create class meth to create instances?
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name) #detects instancs from @@all class variable
    self.all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def print_songs()
    puts @songs.collect {|x| x.name}
  end

  end
