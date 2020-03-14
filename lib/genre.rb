require_relative 'song'

class Genre
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
        Song.all.select { |song| song.genre == self }
    end

    def artists
        songs.map { |s| s.artist }
    end
end