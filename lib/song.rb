require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        artist.songs << self
        genre.artists << artist
        genre.songs << self
        artist.genres << genre
    end

    def self.all
        @@all
    end


end