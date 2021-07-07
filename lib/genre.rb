class Genre
    attr_reader :name
    @@all = []
    def initialize name
        @name = name
        @@all << self
    end
    def self.add_genre name 
        names == @@all.map {|genre| genre.name}
        Genre.new(name) unless names.any? name
    end
    def self.all
        @@all
    end

    def songs 
        Song.all.select {|song| song.genre == self}
    end

    def artists
        arr = []
        Song.all.each do |song|
            if song.genre == self
                arr << song.artist
            end
        end
        arr.uniq 
    end
          
end