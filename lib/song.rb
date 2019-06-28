require 'pry'
class Song
    attr_reader :artist,:genre
    @@all = []
    def initialize name,artist,genre
        @name,@genre,@artist = name,genre,artist
        @@all << self
        artist.songs << self
       
    end
    def self.all
        @@all
    end
end