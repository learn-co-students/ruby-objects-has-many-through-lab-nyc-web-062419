class Genre
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    #class methods
    def self.all
        @@all
    end

    #instance methods
    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map {|att| att.artist}
    end
end
