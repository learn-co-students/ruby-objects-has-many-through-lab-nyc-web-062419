require 'pry'
require_relative "./artist.rb"
require_relative "./genre.rb"


class Song

	attr_accessor :name, :artist, :genre


	@@all = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		Song.all << self
	end

	def self.all 
		@@all 
	end

end

# dammit = Song.new("Dammit", "blink 182", "punk")
# antennas = Song.new("Antennas", "Rancid", "punk")

# punk = Genre.new("punk")
# pop = Genre.new("rocK")

# rancid = Artist.new("Rancid")
# blink_182 = Artist.new("blink 182")
# the_rolling_stones = Artist.new("The Rolling Stones")

# binding.pry
# puts "HI"
