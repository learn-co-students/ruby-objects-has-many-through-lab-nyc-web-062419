class Artist
  attr_reader :name
  attr_accessor :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    # make a new song
    s = Song.new(name, self, genre)
  end

  def self.all
    @@all
  end
end
