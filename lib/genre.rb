
class Genre

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        Genre.all << self
    end

    def songs

        Song.all.select{|song| song.genre == self}

    end

    def artists

        self.songs.collect{|song| song.artist}.uniq

    end

end