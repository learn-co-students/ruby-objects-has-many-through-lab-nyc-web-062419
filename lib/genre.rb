require 'pry'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    Genre.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all do |instance|
      instance.genre = self
    end
  end

  def artists
    Song.all.map do |instance|
      instance.artist
    end
  end
  
end