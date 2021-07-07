class Genre

    attr_accessor :genre

    @@all = []
    def initialize(genre)
        @genre = genre
        @@all << self
    end

    def name
        @genre
    end

    def songs
        Song.all.select do |song|
            song.genre == self

        end
    end

    def self.all
        @@all
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end
end