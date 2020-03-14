require 'pry'
require_relative 'song'
class Artist
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name

        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self }
    end

    def genres
        songs.map { |s| s.genre }
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

end