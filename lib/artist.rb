require 'pry'
class Artist
attr_accessor :name
@@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end
##class methods
    def self.all
        @@all
    end

##instance methods
    def new_song(name,genre)
       
        name = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.map {|att| att.genre}
    end


end