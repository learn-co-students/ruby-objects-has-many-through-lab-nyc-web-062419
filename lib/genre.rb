require 'pry'

class Genre

    attr_accessor :name, :artists, :songs, :genres

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        @@all << self
    end

    def self.all
        @@all
    end


end
